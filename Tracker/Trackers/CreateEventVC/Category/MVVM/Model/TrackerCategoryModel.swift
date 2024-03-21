//
//  TrackerCategory.swift
//  Tracker
//
//  Created by Ольга Чушева on 26.02.2024.
//

import UIKit

struct TrackerCategoryModel {
    let name: String
    let trackers: [Tracker]
    
    func visibleTrackers(filterString: String) -> [Tracker] {
        if filterString.isEmpty {
            return trackers
        } else {
            return trackers.filter { $0.name.lowercased().contains(filterString.lowercased()) }
        }
    }
}
