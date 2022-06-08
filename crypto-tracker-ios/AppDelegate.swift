//
//  AppDelegate.swift
//  crypto-tracker-ios
//
//  Created by Brett Lamy on 4/26/18.
//  Copyright © 2018 Brett Lamy. All rights reserved.
//

import UIKit
import Pendo

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {



      let initParams = PendoInitParams()
  initParams.visitorId = "red bar"
      initParams.visitorData = ["Age": "25", "Country": "UK", "Gender": "F"]
   initParams.accountId = "Acme"
      initParams.accountData = ["Tier": "1", "Timezone": "EST", "Size": "Enterprise"]



      PendoManager.shared().initSDK(
      "eyJhbGciOiJSUzI1NiIsImtpZCI6IiIsInR5cCI6IkpXVCJ9.eyJkYXRhY2VudGVyIjoidXMiLCJrZXkiOiJhY2E3ODNiZmNmY2ZiOTRkZWQyNmM2NWVlZjY4ZDJmYmMyY2MyNzRmYjc4MDA4MGI3MzY2ODUzMjQyNDlkZmM1NTUxNDM1OWUyMDIwYTZlOGY2M2ViMWViN2UzZWNlOGMzNjk4ZjZlYzY0NjNjODU3MzY1NzVlZmQ0YTU1YzZhYS5lZmFmNmJmNzljMWQ3M2M0MDIwODY0NGVmYTQ3YTRlZC5kNTRlYmJhMDA4MDMzNzVlMDI3ODNkNTNmZTBjMzY2MWRhMWZjZjVkY2U0MTE1Mjc5NjM2N2Q1OTc4MTQyY2M0In0.UFPbOzxYKaDPyXeK-OzuTgKkEqtvceYOxhmrG19noOsPBM9R_4A24vo2AzGXqc8DHnSg7DWZELLXog5SLNBqKO4ZE8WW4UVqZ4cMf9Ri53Nzy6sK0mQUvQH4xqnOzqi8GXIONXs3WKgD4z5pjdujQ4vmLMi1-jG6vBUFa8ulDE4",
      initParams: initParams)







        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

  func application(_ app: UIApplication,
  open url: URL,
  options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool
     {
         if url.scheme?.range(of: "pendo") != nil {
             PendoManager.shared().initWith(url)

             return true
         }
         // your code here...
         return true
     }
}

