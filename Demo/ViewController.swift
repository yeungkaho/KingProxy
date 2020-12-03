//
//  ViewController.swift
//  Demo
//
//  Created by Purkylin King on 2018/1/30.
//  Copyright © 2018年 Purkylin King. All rights reserved.
//

import UIKit
import KingProxy
import CocoaLumberjack

func delay(_ interval: TimeInterval, task: @escaping ()->()) {
    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + interval) {
        task()
    }
}

class ViewController: UIViewController {
    let server = KingHttpProxy()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DDLog.add(DDASLLogger.sharedInstance) // TTY = Xcode console
        
        delay(1) {
            _ = ACL.shared
//             ACL.shared?.load(configFile: "your config file")
            self.server.forwardProxy = ForwardProxy(type: .socks5, host: "127.0.0.1", port: 8012)
            _ = self.server.start()
        }
    }
}

