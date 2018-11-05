//
//  AppDelegate.swift
//  Record_Pause_iOS_video_app_v01
//
//  Created by Steve on 11/5/18.
//  Copyright © 2018 SteveAndTheDogs. All rights reserved.
//

import UIKit
import CoreData
import os.log


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        os_log("AppDelegate. application(didFinishLaunchingWithOptions)", log: OSLog.default, type: .info)
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        os_log("AppDelegate. applicationWillResignActive()", log: OSLog.default, type: .info)
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        os_log("AppDelegate. applicationDidEnterBackground()", log: OSLog.default, type: .info)
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        os_log("AppDelegate. applicationWillEnterForeground()", log: OSLog.default, type: .info)
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        os_log("AppDelegate. applicationDidBecomeActive()", log: OSLog.default, type: .info)
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        os_log("AppDelegate. applicationWillTerminate()", log: OSLog.default, type: .info)
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        // Saves changes in the application's managed object context before the application terminates.
        self.saveContext()
    }

    // MARK: - Core Data stack

    lazy var persistentContainer: NSPersistentContainer = {
        /*
         The persistent container for the application. This implementation
         creates and returns a container, having loaded the store for the
         application to it. This property is optional since there are legitimate
         error conditions that could cause the creation of the store to fail.
        */
        let container = NSPersistentContainer(name: "Record_Pause_iOS_video_app_v01")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                os_log("AppDelegate. persistentContainer --> ERROR", log: OSLog.default, type: .info)
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                 
                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

    // MARK: - Core Data Saving support

    func saveContext () {
        os_log("AppDelegate. saveContext()", log: OSLog.default, type: .info)
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                os_log("AppDelegate. saveContext() context.hasChanges try context.save", log: OSLog.default, type: .info)
                try context.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }

    
    
    // --------------------
} // END class AppDelegate:

