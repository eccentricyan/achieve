//
//  BlogManager.swift
//  achieve
//
//  Created by seki on 2016/09/14.
//  Copyright © 2016年 seki. All rights reserved.
//

import UIKit
import Alamofire
class BlogManager: NSObject {
    // 保存ボタンが押されたときに呼ばれるメソッドを定義
    class func postBlog(blog: Blog){
        let params: [String: AnyObject] = [
            "title": blog.title,
            "content": blog.content
        ]
        // HTTP通信
        print("name",blog.title)
        print("content",blog.content)
        Alamofire.request(.POST, "\(Env.Documentroot())/blogs", parameters: params, encoding: .URL).responseJSON {
            (response) in guard let data = response.result.value
                else {
                    print(response.result.value)
                    print("Request failed with error")
                    return
            }
            print(data)
            print("=============JSON================")
        }
    }

}
