// 서울 열린데이터광장
// 데이터셋(REST API) : 서울시 주민등록인구 (구별) 통계
// sample URL :	http://openapi.seoul.go.kr:8088/sample/json/octastatapi419/1/5/

import 'package:flutter/foundation.dart';

// Sample json Decode
Map<String, dynamic> sampleData = {
  "octastatapi419": {
    "list_total_count": 1014,
    "RESULT": {
      "CODE": "INFO-000",
      "MESSAGE": "정상 처리되었습니다"
    },
    "row": [
      {
        "GIGAN": "﻿2010.1-4",
        "JACHIGU": "합계",
        "SEDAE": "4,121,193",
        "GYE_1": "10,464,171",
        "NAMJA_1": "5,181,117",
        "YEOJA_1": "5,283,054",
        "GYE_2": "10,208,670",
        "NAMJA_2": "5,059,504",
        "YEOJA_2": "5,149,166",
        "GYE_3": "255,501",
        "NAMJA_3": "121,613",
        "YEOJA_3": "133,888",
        "SEDAEDANGINGU": "2.48",
        "N_65SEISANGGORYEONGJA": "956,414"
      },
      {
        "GIGAN": "2010.1-4",
        "JACHIGU": "종로구",
        "SEDAE": "74,300",
        "GYE_1": "177,023",
        "NAMJA_1": "88,225",
        "YEOJA_1": "88,798",
        "GYE_2": "168,158",
        "NAMJA_2": "84,088",
        "YEOJA_2": "84,070",
        "GYE_3": "8,865",
        "NAMJA_3": "4,137",
        "YEOJA_3": "4,728",
        "SEDAEDANGINGU": "2.26",
        "N_65SEISANGGORYEONGJA": "20,925"
      },
      {
        "GIGAN": "2010.1-4",
        "JACHIGU": "중구",
        "SEDAE": "58,472",
        "GYE_1": "138,102",
        "NAMJA_1": "69,175",
        "YEOJA_1": "68,927",
        "GYE_2": "129,786",
        "NAMJA_2": "65,216",
        "YEOJA_2": "64,570",
        "GYE_3": "8,316",
        "NAMJA_3": "3,959",
        "YEOJA_3": "4,357",
        "SEDAEDANGINGU": "2.22",
        "N_65SEISANGGORYEONGJA": "16,208"
      },
      {
        "GIGAN": "2010.1-4",
        "JACHIGU": "용산구",
        "SEDAE": "107,407",
        "GYE_1": "250,844",
        "NAMJA_1": "123,295",
        "YEOJA_1": "127,549",
        "GYE_2": "238,366",
        "NAMJA_2": "116,764",
        "YEOJA_2": "121,602",
        "GYE_3": "12,478",
        "NAMJA_3": "6,531",
        "YEOJA_3": "5,947",
        "SEDAEDANGINGU": "2.22",
        "N_65SEISANGGORYEONGJA": "28,436"
      },
      {
        "GIGAN": "2010.1-4",
        "JACHIGU": "성동구",
        "SEDAE": "126,942",
        "GYE_1": "316,113",
        "NAMJA_1": "158,228",
        "YEOJA_1": "157,885",
        "GYE_2": "308,144",
        "NAMJA_2": "154,389",
        "YEOJA_2": "153,755",
        "GYE_3": "7,969",
        "NAMJA_3": "3,839",
        "YEOJA_3": "4,130",
        "SEDAEDANGINGU": "2.43",
        "N_65SEISANGGORYEONGJA": "30,704"
      }
    ]
  }
};


class Modeling1{
  final String GIGAN;
  final String JACHIGU;
  final String SEDAE;
  final String GYE_1;
  final String NAMJA_1;
  final String YEOJA_1;
  final String GYE_2;
  final String NAMJA_2;
  final String YEOJA_2;
  final String GYE_3;
  final String NAMJA_3;
  final String YEOJA_3;
  final String SEDAEDANGINGU;
  final String N_65SEISANGGORYEONGJA;

  const Modeling1({
    @required this.GIGAN,
    @required this.JACHIGU,
    @required this.SEDAE,
    @required this.GYE_1,
    @required this.NAMJA_1,
    @required this.YEOJA_1,
    @required this.GYE_2,
    @required this.NAMJA_2,
    @required this.YEOJA_2,
    @required this.GYE_3,
    @required this.NAMJA_3,
    @required this.YEOJA_3,
    @required this.SEDAEDANGINGU,
    @required this.N_65SEISANGGORYEONGJA
  });

  factory Modeling1.toJson({@required Map<String, dynamic> json})
    => Modeling1(
      GIGAN: json['GIGAN'] as String,
      JACHIGU: json['JACHIGU'] as String,
      SEDAE: json['SEDAE'] as String,
      GYE_1: json['GYE_1'] as String,
      NAMJA_1: json['NAMJA_1'] as String,
      YEOJA_1: json['YEOJA_1'] as String,
      GYE_2: json['GYE_2'] as String,
      NAMJA_2: json['NAMJA_2'] as String,
      YEOJA_2: json['YEOJA_2'] as String,
      GYE_3: json['GYE_3'] as String,
      NAMJA_3: json['NAMJA_3'] as String,
      YEOJA_3: json['YEOJA3'] as String,
      SEDAEDANGINGU: json['SEDAEDANGINGU'] as String,
      N_65SEISANGGORYEONGJA: json['N_65SEISANGGORYEONGJA'] as String
    );
}
