//
//  Target_TYHLanguage.swift
//  TYHLanguageManager
//
//  Created by YaoHua Tan on 2019/10/28.
//  Copyright © 2019 YaoHua Tan. All rights reserved.
//

import UIKit

@objc class Target_TYHLanguage: NSObject {
    @objc func Action_localizedStringForKey(_ params: Dictionary<String, Any>) -> String? {
        return TYHLocalizeHelper.share().getString(params)
    }
}
