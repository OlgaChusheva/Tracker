//
//  Date+Extension.swift
//  Tracker
//
//  Created by Ольга Чушева on 26.02.2024.
//

import Foundation

extension Date {
    var yearMonthDayComponents: DateComponents {
        Calendar.current.dateComponents([.year, .month, .day], from: self)
    }
}

