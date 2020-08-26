//
//  ViewController.swift
//  sample1GAHackathon
//
//  Created by Sousuke Ikemoto on 2020/08/26.
//  Copyright © 2020 Sousuke Ikemoto. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func button(_ sender: Any) {
             
             let content = UNMutableNotificationContent()
             content.title = "テスト"
             content.body = "通知"
             content.sound = UNNotificationSound.default
             
             let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
             let request = UNNotificationRequest(identifier: "hoge", content: content, trigger: trigger)
             let center = UNUserNotificationCenter.current()
             center.add(request)
             print("通知完了")
    }
    
}

