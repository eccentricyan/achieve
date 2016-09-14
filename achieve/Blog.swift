//
//  Blog.swift
//  achieve
//
//  Created by seki on 2016/09/14.
//  Copyright © 2016年 seki. All rights reserved.
//

import UIKit

class Blog: NSObject {
    var title: String = ""
    var content: String = ""
    init(title: String,content: String) {
        self.title = title
        self.content = content
    }

}
