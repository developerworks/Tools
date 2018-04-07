import UIKit
import UserNotifications

class Tools: NSObject {
    static func requestUserNotification() {
        if #available(iOS 10.0, *) {
            UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { (accepted, error) in
                if !accepted {
                    print("用户不允许消息通知!")
                }
            }
        } else {
            // Fallback on earlier versions
        }
    }
}

