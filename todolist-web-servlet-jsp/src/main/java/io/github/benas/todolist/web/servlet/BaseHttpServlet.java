/*
 * The MIT License
 *
 *   Copyright (c) 2015, Delta Star Team
 *
 *   Permission is hereby granted, free of charge, to any person obtaining a copy
 *   of this software and associated documentation files (the "Software"), to deal
 *   in the Software without restriction, including without limitation the rights
 *   to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 *   copies of the Software, and to permit persons to whom the Software is
 *   furnished to do so, subject to the following conditions:
 *
 *   The above copyright notice and this permission notice shall be included in
 *   all copies or substantial portions of the Software.
 *
 *   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 *   AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 *   LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 *   OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 *   THE SOFTWARE.
 */

package io.github.benas.todolist.web.servlet;

import org.json.JSONObject;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.ResourceBundle;


/**
 * Base Servlet.
 */

public abstract class BaseHttpServlet extends HttpServlet {

    private ResourceBundle resourceBundle;
    private Validator validator;
    private List<String> errorList = new ArrayList<>();
    public static final String KEY_HINT = "hint";

    @Override
    public void init() throws ServletException {
        super.init();
        resourceBundle = ResourceBundle.getBundle("cfs");
        ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
        validator = factory.getValidator();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        errorList.clear();
        sendToNextPage(performDoGet(request, response), request, response);


    }

    protected abstract String performDoGet(HttpServletRequest request, HttpServletResponse response);

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        errorList.clear();
        sendToNextPage(performDoPost(request, response), request, response);

    }

    private void sendToNextPage(String nextPage, HttpServletRequest request,
                                HttpServletResponse response) throws IOException, ServletException {
        request.setAttribute("errorList", getErrorList());
        if (nextPage == null) {
            response.sendError(HttpServletResponse.SC_NOT_FOUND,
                    request.getServletPath());
        } else if (nextPage.endsWith(".jsp")) {
            RequestDispatcher d = request.getRequestDispatcher(nextPage);
            System.out.println("forward to " + nextPage);
            d.forward(request, response);
        } else if (nextPage.endsWith(".json")) {
            nextPage = nextPage.substring(0, nextPage.length() - 5);
            JSONObject jsonObject = new JSONObject(nextPage);
            response.setContentType("application/json");
            response.getWriter().write(jsonObject.toString());
        } else {
            String path = request.getContextPath() + nextPage;
            System.out.println("SendRedirect to " + path);
            response.sendRedirect(path);
        }

    }

    protected String performDoPost(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        return performDoGet(httpServletRequest, httpServletResponse);
    }

    public ResourceBundle getResourceBundle() {
        return resourceBundle;
    }

    public Validator getValidator() {
        return validator;
    }

    public List<String> getErrorList() {
        return errorList;
    }

    public boolean isValid() {
        return errorList.size() == 0;
    }
}