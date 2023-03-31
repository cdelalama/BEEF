{
  "resourceType": "GMExtension",
  "resourceVersion": "1.2",
  "name": "JsonStruct",
  "androidactivityinject": "",
  "androidclassname": "",
  "androidcodeinjection": "",
  "androidinject": "",
  "androidmanifestinject": "",
  "androidPermissions": [],
  "androidProps": false,
  "androidsourcedir": "",
  "author": "",
  "classname": "",
  "copyToTargets": -1,
  "date": "2020-04-24T02:46:34.661214+02:00",
  "description": "",
  "exportToGame": true,
  "extensionVersion": "1.1.0",
  "files": [
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","constants":[],"copyToTargets":-1,"filename":"JsonStruct.gml","final":"","functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"__jsons_decode_array__","argCount":0,"args":[
            2,
            2,
          ],"documentation":"","externalName":"__jsons_decode_array__","help":"__jsons_decode_array__(@seekrec, safe)","hidden":true,"kind":2,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"__jsons_decode_bool__","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"__jsons_decode_bool__","help":"__jsons_decode_bool__(@seekrec)","hidden":true,"kind":2,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"__jsons_decode_real__","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"__jsons_decode_real__","help":"__jsons_decode_real__(@seekrec)","hidden":true,"kind":2,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"__jsons_decode_seek__","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"__jsons_decode_seek__","help":"__jsons_decode_seek__(@seekrec)","hidden":true,"kind":2,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"__jsons_decode_string__","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"__jsons_decode_string__","help":"__jsons_decode_string__(@seekrec)","hidden":true,"kind":2,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"__jsons_decode_struct__","argCount":0,"args":[
            2,
            2,
          ],"documentation":"","externalName":"__jsons_decode_struct__","help":"__jsons_decode_struct__(@seekrec, safe)","hidden":true,"kind":2,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"__jsons_decode_subcontent__","argCount":0,"args":[
            2,
            2,
          ],"documentation":"","externalName":"__jsons_decode_subcontent__","help":"__jsons_decode_subcontent__(@seekrec, safe)","hidden":true,"kind":2,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"__jsons_decode_undefined__","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"__jsons_decode_undefined__","help":"__jsons_decode_undefined__(@seekrec)","hidden":true,"kind":2,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"__jsons_decrypt__","argCount":0,"args":[
            1,
            1,
          ],"documentation":"","externalName":"__jsons_decrypt__","help":"__jsons_decrypt__(str, key)","hidden":true,"kind":2,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"__jsons_encrypt__","argCount":0,"args":[
            1,
            1,
          ],"documentation":"","externalName":"__jsons_encrypt__","help":"__jsons_encrypt__(str, key)","hidden":true,"kind":2,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"__jsons_hex_to_decimal__","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"__jsons_hex_to_decimal__","help":"__jsons_hex_to_decimal__(hexstr)","hidden":true,"kind":2,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"__jsons_is_whitespace__","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"__jsons_is_whitespace__","help":"__jsons_is_whitespace__(char)","hidden":true,"kind":2,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"__jsons_rc4__","argCount":0,"args":[
            2,
            1,
            2,
            2,
          ],"documentation":"","externalName":"__jsons_rc4__","help":"__jsons_rc4__(@buffer, key, offset, length)","hidden":true,"kind":2,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"jsons_clone","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"jsons_clone","help":"jsons_clone(val)","hidden":false,"kind":2,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"jsons_decode","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"jsons_decode","help":"jsons_decode(jsonstr)","hidden":false,"kind":2,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"jsons_decrypt","argCount":-1,"args":[],"documentation":"","externalName":"jsons_decrypt","help":"jsons_decrypt(jsonencstr, [deckey], [decfunc])","hidden":false,"kind":2,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"jsons_encode","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"jsons_encode","help":"jsons_encode(val)","hidden":false,"kind":2,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"jsons_encrypt","argCount":-1,"args":[],"documentation":"","externalName":"jsons_encrypt","help":"jsons_encrypt(thing, [enckey], [encfunc])","hidden":false,"kind":2,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"jsons_load","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"jsons_load","help":"jsons_load(fname)","hidden":false,"kind":2,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"jsons_load_encrypted","argCount":-1,"args":[],"documentation":"","externalName":"jsons_load_encrypted","help":"jsons_load_encrypted(fname, [deckey], [decfunc])","hidden":false,"kind":2,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"jsons_real_encoder_detailed","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"jsons_real_encoder_detailed","help":"jsons_real_encoder_detailed(val)","hidden":false,"kind":2,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"jsons_real_encoder_string_format","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"jsons_real_encoder_string_format","help":"jsons_real_encoder_string_format(val)","hidden":false,"kind":2,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"jsons_save","argCount":0,"args":[
            1,
            2,
          ],"documentation":"","externalName":"jsons_save","help":"jsons_save(fname, thing)","hidden":false,"kind":2,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"jsons_save_encrypted","argCount":-1,"args":[],"documentation":"","externalName":"jsons_save_encrypted","help":"jsons_save_encrypted(fname, thing, [enckey], [encfunc])","hidden":false,"kind":2,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"jsons_decode_safe","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"jsons_decode_safe","help":"jsons_decode_safe(jsonstr)","hidden":false,"kind":2,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"jsons_decrypt_safe","argCount":-1,"args":[],"documentation":"","externalName":"jsons_decrypt_safe","help":"jsons_decrypt_safe(jsonencstr, [deckey], [decfunc])","hidden":false,"kind":2,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"jsons_load_safe","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"jsons_load_safe","help":"jsons_load_safe(fname)","hidden":false,"kind":2,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"jsons_load_encrypted_safe","argCount":-1,"args":[],"documentation":"","externalName":"jsons_load_encrypted_safe","help":"jsons_load_encrypted_safe(fname, [deckey], [decfunc])","hidden":false,"kind":2,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"__jsons_encode_formatted__","argCount":0,"args":[
            2,
            1,
            2,
            2,
            1,
            1,
          ],"documentation":"","externalName":"__jsons_encode_formatted__","help":"__jsons_encode_formatted__(val, indent, currentDepth, maxDepth, colon, comma)","hidden":false,"kind":2,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"jsons_encode_formatted","argCount":-1,"args":[],"documentation":"","externalName":"jsons_encode_formatted","help":"jsons_encode_formatted(val, [indent], [maxDepth], [colon], [comma])","hidden":false,"kind":2,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"jsons_save_formatted","argCount":-1,"args":[],"documentation":"","externalName":"jsons_save_formatted","help":"jsons_save_formatted(fname, val, [indent], [maxDepth], [colon], [comma])","hidden":false,"kind":2,"returnType":1,},
      ],"init":"","kind":2,"order":[
        {"name":"__jsons_decode_array__","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"__jsons_decode_bool__","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"__jsons_decode_real__","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"__jsons_decode_seek__","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"__jsons_decode_string__","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"__jsons_decode_struct__","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"__jsons_decode_subcontent__","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"__jsons_decode_undefined__","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"__jsons_decrypt__","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"__jsons_encode_formatted__","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"__jsons_encrypt__","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"__jsons_hex_to_decimal__","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"__jsons_is_whitespace__","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"__jsons_rc4__","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"jsons_clone","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"jsons_decode","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"jsons_decode_safe","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"jsons_decrypt","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"jsons_decrypt_safe","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"jsons_encode","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"jsons_encode_formatted","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"jsons_encrypt","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"jsons_load","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"jsons_load_safe","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"jsons_load_encrypted","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"jsons_load_encrypted_safe","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"jsons_real_encoder_detailed","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"jsons_real_encoder_string_format","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"jsons_save","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"jsons_save_encrypted","path":"extensions/JsonStruct/JsonStruct.yy",},
        {"name":"jsons_save_formatted","path":"extensions/JsonStruct/JsonStruct.yy",},
      ],"origname":"","ProxyFiles":[],"uncompress":false,"usesRunnerInterface":false,},
  ],
  "gradleinject": "",
  "hasConvertedCodeInjection": true,
  "helpfile": "",
  "HTML5CodeInjection": "",
  "html5Props": false,
  "IncludedResources": [],
  "installdir": "",
  "iosCocoaPodDependencies": "",
  "iosCocoaPods": "",
  "ioscodeinjection": "",
  "iosdelegatename": "",
  "iosplistinject": "",
  "iosProps": false,
  "iosSystemFrameworkEntries": [],
  "iosThirdPartyFrameworkEntries": [],
  "license": "",
  "maccompilerflags": "",
  "maclinkerflags": "",
  "macsourcedir": null,
  "options": [],
  "optionsFile": "options.json",
  "packageId": "",
  "parent": {
    "name": "JsonStruct",
    "path": "folders/Libraries/JsonStruct.yy",
  },
  "productId": "",
  "sourcedir": "",
  "supportedTargets": -1,
  "tvosclassname": null,
  "tvosCocoaPodDependencies": "",
  "tvosCocoaPods": "",
  "tvoscodeinjection": "",
  "tvosdelegatename": null,
  "tvosmaccompilerflags": "",
  "tvosmaclinkerflags": "",
  "tvosplistinject": "",
  "tvosProps": false,
  "tvosSystemFrameworkEntries": [],
  "tvosThirdPartyFrameworkEntries": [],
}