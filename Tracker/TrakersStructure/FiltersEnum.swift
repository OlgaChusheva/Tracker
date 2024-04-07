//
//  FiltersEnum.swift
//  Tracker
//
//  Created by Ольга Чушева on 02.04.2024.
//

import Foundation

enum Filter: String, CaseIterable {
    case all = "Все трекеры"
    case today = "Трекеры на сегодня"
    case completed = "Завершенные"
    case uncompleted = "Незавершенные"
}

