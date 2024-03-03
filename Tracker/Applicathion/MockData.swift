//
//  MockData.swift
//  Tracker
//
//  Created by Ольга Чушева on 26.02.2024.
//

import Foundation

class MockData {
    

    static var categories: [TrackerCategory] = [
        TrackerCategory(name: "Важное", trackers: [
            Tracker(id: UUID(), name: "Погулять с собакой", color: .color17, emoji: "🐶", schedule: [.monday, .saturday, .wednesday, .friday, .sunday, .thursday,.tuesday]),
            Tracker(id: UUID(), name: "Полить цветы", color: .color5, emoji: "🌸", schedule: [.wednesday, .saturday])
        ]),
        TrackerCategory(name: "Тренировки", trackers: [
            Tracker(id: UUID(), name: "Зарядка", color: .color6, emoji: "🤸‍♂️", schedule: []),
            Tracker(id: UUID(), name: "Бассейн", color: .color15, emoji: "🏊‍♀️", schedule: [.tuesday, .thursday, .saturday]),
            Tracker(id: UUID(), name: "Бег", color: .color9, emoji: "🏃‍♂️", schedule: [.wednesday, .saturday])
    ])
    ]
}
