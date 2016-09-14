//
//  Env.swift
//  achieve
//
//  Created by seki on 2016/09/14.
//  Copyright © 2016年 seki. All rights reserved.
//

import UIKit

class Env: NSObject {
    class func Documentroot()->String{
        //HTTPリクエストを送信するAPIサーバドメイン
        let root_url: String = "https://test-eccentricyan.c9users.io/api/v1"
        return  root_url
    }

}
