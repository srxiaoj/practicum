package io.github.todolist.core.service.impl;

import io.github.todolist.core.repository.api.GeoStatRepository;
import io.github.todolist.core.service.api.GeoStatService;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by thanksgiving on 7/25/16.
 */
@Service
@Transactional
public class GeoStatServiceImpl implements GeoStatService {
  /*  private String countryCode = "AF,AL,DZ,AO,AG,AR,AM,AU,AT,AZ,BS,BH,BD,BB,BY,BE,BZ,BJ,BT,BO,BA," +
            "BW,BR,BN,BG,BF,BI,KH,CM,CA,CV,CF,TD,CL,CN,CO,KM,CD,CG,CR,CI,HR,CY,CZ,DK,DJ,DM,DO,EC," +
            "EG,SV,GQ,ER,EE,ET,FJ,FI,FR,GA,GM,GE,DE,GH,GR,GD,GT,GN,GW,GY,HT,HN,HK,HU,IS,IN,ID,IR,IQ," +
            "IE,IL,IT,JM,JP,JO,KZ,KE,KI,KR,UN,KW,KG,LA,LV,LB,LS,LR,LY,LT,LU,MK,MG,MW,MY,MV,ML,MT,MR," +
            "MU,MX,MD,MN,ME,MA,MZ,MM,NA,NP,NL,NZ,NI,NE,NG,NO,OM,PK,PA,PG,PY,PE,PH,PL,PT,QA,RO,RU,RW,WS," +
            "ST,SA,SN,RS,SC,SL,SG,SK,SI,SB,ZA,ES,LK,KN,LC,VC,SD,SR,SZ,SE,CH,SY,TW,TJ,TZ,TH,TL,TG,TO,TT," +
            "TN,TR,TM,UG,UA,AE,GB,US,UY,UZ,VU,VE,VN,YE,ZM,ZW";*/

    @Autowired
    private GeoStatRepository geoStatRepository;

    public JSONObject getAllCountriesCounts() {
        JSONObject jsonObject = new JSONObject();
        List<Object[]> listOfGeoStat = geoStatRepository.getGeobeanByAllCountryCount();
        for (Object[] geoStat : listOfGeoStat) {
            jsonObject.put((String) geoStat[0], (long) geoStat[1]);
//            System.out.println(geoStat[0] + ":" + geoStat[1]);
        }
        return jsonObject;
    }
}
