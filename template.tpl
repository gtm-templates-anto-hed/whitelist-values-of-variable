___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Whitelist Values of Variable",
  "categories": ["ANALYTICS"],
  "description": "List of authorized values from a defined variable, return true if the value is present.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "SELECT",
    "name": "dropDownMenu1",
    "selectItems": [
      {
        "value": "",
        "displayValue": ""
      }
    ],
    "simpleValueType": true,
    "macrosInSelect": true,
    "displayName": "Variable input"
  },
  {
    "type": "SIMPLE_TABLE",
    "name": "simpleTable1",
    "displayName": "Value(s) listing",
    "simpleTableColumns": [
      {
        "defaultValue": "",
        "displayName": "",
        "name": "column1",
        "type": "TEXT"
      }
    ],
    "help": "Enter your listing values to check in selected variable"
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// Enter your template code here.
const log = require('logToConsole');

const dropDownMenu1 = data.dropDownMenu1;
const simpleTable1 = data.simpleTable1;

for (var i = 0; i < data.simpleTable1.length; i++){
  if(data.simpleTable1[i].column1 === dropDownMenu1){
    return true;
  }
}


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 14/11/2019 à 15:38:01


