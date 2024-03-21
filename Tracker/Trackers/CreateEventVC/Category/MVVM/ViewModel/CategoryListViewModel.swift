//
//  CategoryListViewModel.swift
//  Tracker
//
//  Created by Ольга Чушева on 15.03.2024.
//

import Foundation

protocol CategoryListViewModelDelegate: AnyObject {
    func createCategory(category: TrackerCategoryModel)
}

final class CategoryListViewModel: NSObject {
    
    var onChange: (() -> Void)?
    
    private(set) var categories: [TrackerCategoryModel] = [] {
        didSet {
            onChange?()
        }
    }

    private let trackerCategoryStore = TrackerCategoryStore()
    private(set) var selectedCategory: TrackerCategoryModel?
    private weak var delegate: CategoryListViewModelDelegate?

    init(delegate: CategoryListViewModelDelegate?, selectedCategory: TrackerCategoryModel?) {
        self.selectedCategory = selectedCategory
        self.delegate = delegate
        super.init()
        trackerCategoryStore.delegate = self
        categories = trackerCategoryStore.trackerCategories
    }
    
  
    func selectCategory(with name: String) {
        let category = TrackerCategoryModel(name: name, trackers: [])
        delegate?.createCategory(category: category)
    }

}

extension CategoryListViewModel: TrackerCategoryStoreDelegate {
    func store(_ store: TrackerCategoryStore, didUpdate update: TrackerCategoryStoreUpdate) {
        categories = trackerCategoryStore.trackerCategories
    }
}

