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
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super .init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        
        tabBar.backgroundColor = UIColor(named: "WhiteYP")
        tabBar.tintColor = UIColor(named: "BlueYP")
        tabBar.barTintColor = UIColor(named: "GrayYP")
        
        tabBar.layer.borderColor = CGColor(red: 174, green: 175, blue: 180, alpha: 1)
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let trackersNavigathion = UINavigationController(rootViewController: TrackersViewController())
        let statisticsNavigathion = UINavigationController(rootViewController: StatisticsController())
        
        trackersNavigathion.tabBarItem = UITabBarItem(title: "Трекеры",
                                                     image: UIImage(named: "Trackers"),
                                                     tag: Tabs.trackers.rawValue)
      
        statisticsNavigathion.tabBarItem = UITabBarItem(title: "Статистика",
                                                       image: UIImage(named: "Statistics"),
                                                       tag: Tabs.statistics.rawValue)
        
        setViewControllers([trackersNavigathion, statisticsNavigathion], animated: false)
    }
}
