//
//  TrackerTest.swift
//  TrackerTest
//
//  Created by Ольга Чушева on 06.04.2024.
//

import XCTest
import SnapshotTesting
@testable import Tracker

final class TrackerTests: XCTestCase {
    
    func testTrackersVCLight() {
        let viewController = TrackersViewController()
        assertSnapshot(matching: viewController.view, as: .image(traits: .init(userInterfaceStyle: .light)))
    }
    
    func testTrackersVCDark() {
        let viewController = TrackersViewController()
        assertSnapshot(matching: viewController.view, as: .image(traits: .init(userInterfaceStyle: .dark)))
    }
}
