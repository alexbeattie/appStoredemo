//
//  Models.swift
//  NewAppStore
//
//  Created by Alex Beattie on 9/22/17.
//  Copyright © 2017 Artisan Branding. All rights reserved.
//

import UIKit

class AppCategory: NSObject {
    
    var name: String?
    var apps: [App]?
    
    static func sampleAppCategories() -> [AppCategory] {
        
        let bestNewAppsCategory = AppCategory()
        bestNewAppsCategory.name = "Best New Apps"
        
        var apps = [App]()
        
        //logic
        let frozenApp = App()
        frozenApp.name = "Disney Built it:  Frozen"
        frozenApp.imageName = "frozen"
        frozenApp.category = "Entertainment"
        frozenApp.price = NSNumber(value: 3.99)
        apps.append(frozenApp)
        
        bestNewAppsCategory.apps = apps
        
    
        /// new category
        let bestNewGamesCategory = AppCategory()
        bestNewGamesCategory.name = "Best New Games"
        
        var bestNewGamesApps = [App]()
        
        let telepaintApp = App()
        telepaintApp.name = "Telepaint"
        telepaintApp.category = "Games"
        telepaintApp.imageName = "telepaint"
        telepaintApp.price = NSNumber(value: 4.99)
        bestNewGamesApps.append(telepaintApp)
        
        bestNewGamesCategory.apps = bestNewGamesApps
        bestNewAppsCategory.apps = apps
        
        return [bestNewAppsCategory, bestNewGamesCategory]
        
    }
}

class App: NSObject {
    
    var id: NSNumber?
    var name: String?
    var category: String?
    var imageName: String?
    var price: NSNumber?
    
}
