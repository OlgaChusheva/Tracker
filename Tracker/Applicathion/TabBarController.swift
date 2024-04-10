//
//  TabBarController.swift
//  Tracker
//
//  Created by Ольга Чушева on 06.02.2024.
//

import Foundation
import UIKit
    
    enum Tabs: Int {
        case trackers
        case statistics
    }
    
final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateTabBar()
    }
   
    private func generateTabBar() {
        
        tabBar.backgroundColor = UIColor(named: "WhiteYP")
        tabBar.tintColor = UIColor(named: "BlueYP")
        tabBar.barTintColor = UIColor(named: "GrayYP")
        
        tabBar.layer.borderColor = UIColor(red:0.0/255.0, green:0.0/255.0, blue:0.0/255.0, alpha:0.2).cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
    }
        
        class func configure() -> UIViewController {
        
        let trackersNavigathion = UINavigationController(rootViewController: TrackersViewController())
        let statisticsNavigathion = UINavigationController(rootViewController: StatisticsController())
        
        trackersNavigathion.tabBarItem = UITabBarItem(title: "Трекеры",
                                                     image: UIImage(named: "Trackers"),
                                                     tag: Tabs.trackers.rawValue)
      
        statisticsNavigathion.tabBarItem = UITabBarItem(title: NSLocalizedString("statistics", tableName: "Localizable", comment: "statistics"),
                                                       image: UIImage(named: "Statistics"),
                                                       tag: Tabs.statistics.rawValue)
            let tabBarController = TabBarController()
            tabBarController.viewControllers = [trackersNavigathion, statisticsNavigathion]
            return tabBarController
    }
}
