//
//  AppDelegate.swift
//  iOS 6
//
//  Created by Victor Lobe on 10.06.17.
//  Copyright © 2017 Victor Lobe. All rights reserved.
//

import UIKit
import CoreData
import OrientationTracker

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    private var reachability:Reachability!
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        if isKeyPresentInUserDefaults(key: "batteryMonitoringAllowed") == false {
            UserDefaults.standard.set(true, forKey: "batteryMonitoringAllowed")
        }
        
        if isKeyPresentInUserDefaults(key: "directBoot") == false {
            UserDefaults.standard.set(true, forKey: "directBoot")
        }
        
        SettingsBundleHelper.checkAndExecuteSettings()
        if UserDefaults.standard.bool(forKey: "batteryMonitoringAllowed") == true {
            UIDevice.current.isBatteryMonitoringEnabled = true
        }
        if UserDefaults.standard.bool(forKey: "setupDone") == false {
            UIDevice.current.isBatteryMonitoringEnabled = true
        }
        OrientationTracker.shared.startDeviceOrientationTracking()
        
        if UserDefaults.standard.string(forKey: "iCloudUsername") == nil {} else {
            iCloudUsernameL = UserDefaults.standard.string(forKey: "iCloudUsername") ?? ""
        }
        if UserDefaults.standard.string(forKey: "iCloudPassword") == nil {} else {
            iCloudPasswordL = UserDefaults.standard.string(forKey: "iCloudPassword") ?? ""
        }
        
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
        print("welcome back")
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        // Saves changes in the application's managed object context before the application terminates.
    }
}

