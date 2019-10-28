//
//  Extension_TYHLanguage.swift
//  TYHLanguageManager
//
//  Created by YaoHua Tan on 2019/10/26.
//  Copyright © 2019 YaoHua Tan. All rights reserved.
//

import CTMediator
//模块名称
let TYHLanguageMoudleName = "TYHLanguageManager"

//标识
let TYHLanguageName = "TYHLanguage"

//获取本地化
let TYHLanguageGetString = "localizedStringForKey"


public extension CTMediator {    
    func tyh_localizedStringForKey(_ key: String,_ language: String,_ table: String? = nil) -> String? {
        let params = [kCTMediatorParamsKeySwiftTargetModuleName:TYHLanguageMoudleName,
                      "key": key,
                      "language": language,
                      "table": table as Any] as [AnyHashable:Any]
        return performTarget(TYHLanguageName, action: TYHLanguageGetString, params: params, shouldCacheTarget: false) as? String
    }
}
