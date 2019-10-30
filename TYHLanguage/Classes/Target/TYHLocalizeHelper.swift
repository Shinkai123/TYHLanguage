//
//  TYHLocalizeHelper.swift
//  TYHLanguageManager
//
//  Created by YaoHua Tan on 2019/10/28.
//  Copyright © 2019 YaoHua Tan. All rights reserved.
//

import UIKit

public class TYHLocalizeHelper: NSObject {
    //MARK:单例
    static let instance = TYHLocalizeHelper()
    static func share() -> TYHLocalizeHelper {
        return instance
    }
    
    //MARK:-获取图片
     class func getString(_ params: Dictionary<String, Any>) -> String? {
        
        let key = params["key"] as? String ?? ""
        let language = params["language"] as? String ?? "en"
        let table = params["table"] as? String ?? ""
        let bundle = Bundle(for: self)
        guard let path = bundle.path(forResource: language, ofType: "lproj") else {
            return nil
        }
        
        let resource = Bundle.init(path: path )
        let string = resource?.localizedString(forKey: key, value: key, table: table)
        return string ?? key
    }
}
