package io.github.todolist.core.domain;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@NamedQueries({
        @NamedQuery(name = "getStateDayCount", query = "SELECT g FROM GeoStat g WHERE g.state = :p_state AND g.date = :p_date"),
        @NamedQuery(name = "getCountryDayCount", query = "SELECT g FROM GeoStat g WHERE g.country = :p_country AND g.date = :p_date"),
        @NamedQuery(name = "getStateTotalCount", query = "SELECT g FROM GeoStat g WHERE g.state = :p_state"),
        @NamedQuery(name = "getCountryTotalCount", query = "SELECT g FROM GeoStat g WHERE g.country = :p_country AND g.date = :p_date"),
        @NamedQuery(name = "getCountryTotalCountByCode", query = "SELECT g FROM GeoStat g WHERE g.countryCode = :p_countryCode"),
        @NamedQuery(name = "getCountryDayCountByCode", query = "SELECT g FROM GeoStat g WHERE g.countryCode = :p_countryCode AND g.date = :p_date")
})
public class GeoStat implements Serializable {
    @Id
    @GeneratedValue
    private long id;
    private String country;
    private String state;
    private Date date;
    private long stateDayCount;
    private long countryDayCount;
    private long stateTotalCount;
    private long countryTotalCount;
    private String countryCode;
    public GeoStat() {

    }

    public GeoStat(String country, String state, Date date, long stateDayCount, long countryDayCount, long stateTotalCount, long countryTotalCount, String countryCode) {
        this.country = country;
        this.state = state;
        this.date = date;
        this.stateDayCount = stateDayCount;
        this.countryDayCount = countryDayCount;
        this.stateTotalCount = stateTotalCount;
        this.countryTotalCount = countryTotalCount;
        this.countryCode = countryCode;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public long getStateDayCount() {
        return stateDayCount;
    }

    public void setStateDayCount(long stateDayCount) {
        this.stateDayCount = stateDayCount;
    }

    public long getCountryDayCount() {
        return countryDayCount;
    }

    public void setCountryDayCount(long countryDayCount) {
        this.countryDayCount = countryDayCount;
    }

    public long getStateTotalCount() {
        return stateTotalCount;
    }

    public void setStateTotalCount(long stateTotalCount) {
        this.stateTotalCount = stateTotalCount;
    }

    public long getCountryTotalCount() {
        return countryTotalCount;
    }

    public void setCountryTotalCount(long countryTotalCount) {
        this.countryTotalCount = countryTotalCount;
    }

    public String getCountryCode() {
        return countryCode;
    }

    public void setCountryCode(String countryCode) {
        this.countryCode = countryCode;
    }
}
