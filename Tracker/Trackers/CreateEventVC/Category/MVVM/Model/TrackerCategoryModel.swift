//
//  TrackerCategory.swift
//  Tracker
//
//  Created by Ольга Чушева on 26.02.2024.
//

import UIKit

struct TrackerCategoryModel: Hashable {
    let name: String
    let trackers: [Tracker]
    
    func visibleTrackers(filterString: String, pin: Bool?) -> [Tracker] {        
        
        if filterString.isEmpty {
            return pin == nil ? trackers : trackers.filter { $0.pinned == pin }
        } else {
            let filterTrackers = trackers.filter { $0.name.lowercased().contains(filterString.lowercased()) }
            let pinFilteredTrackers = filterTrackers.filter { $0.pinned == pin }
            return pin == nil ? filterTrackers : pinFilteredTrackers
        }
    }
}
