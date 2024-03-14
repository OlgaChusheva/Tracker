//
//  OnboardingViewController.swift
//  Tracker
//
//  Created by Ольга Чушева on 12.03.2024.
//

//import Foundation
//import UIKit
//
//class OnboardingViewController: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
//    
//    private lazy var pages: [UIViewController] = {
//        return [blueVC, redVC]
//    }()
//    
//    private lazy var blueVC: UIViewController = {
//        let blueVC = UIViewController()
//        let image = "BackgroundBlue"
//        blueVC.view.addBackground(image: image)
//    }()
//    
//    private lazy var redVC: UIViewController = {
//        let blueVC = UIViewController()
//        let image = "BackgroundRed"
//        blueVC.view.addBackground(image: image)
//    }()
//    
//    lazy var pageControl: UIPageControl = {
//        let pageControl = UIPageControl()
//        pageControl.numberOfPages = pages.count
//        pageControl.currentPage = 0
//        
//        pageControl.currentPageIndicatorTintColor = .ypBlack
//        pageControl.pageIndicatorTintColor = .ypGray
//        
//        pageControl.translatesAutoresizingMaskIntoConstraints = false
//        return pageControl
//    }()
//    
//    private lazy var blueVCLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Отслеживайте только то, что хотите"
//        label.textColor = .ypBlack
//        label.font = .systemFont(ofSize: 32, weight: .bold)
//        label.textAlignment = .center
//        label.numberOfLines = 2
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
//    
//    private lazy var blueVCEnterButton: UIButton = {
//        let button = UIButton()
//        button.backgroundColor = .ypBlack
//        button.titleLabel?.textColor = .white
//        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
//        button.titleLabel?.text = "Вот это технологии!"
//        button.addTarget(self, action: #selector(enterButtonAction), for: .touchUpInside)
//        button.translatesAutoresizingMaskIntoConstraints = false
//        return button
//    }()
//    
//    private lazy var redVCLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Даже если это не литры воды и йога"
//        label.textColor = .ypBlack
//        label.font = .systemFont(ofSize: 32, weight: .bold)
//        label.textAlignment = .center
//        label.numberOfLines = 2
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
//    
//    private lazy var redVCEnterButton: UIButton = {
//        let button = UIButton()
//        button.backgroundColor = .ypBlack
//        button.titleLabel?.textColor = .white
//        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
//        button.titleLabel?.text = "Вот это технологии!"
//        button.addTarget(self, action: #selector(enterButtonAction), for: .touchUpInside)
//        button.translatesAutoresizingMaskIntoConstraints = false
//        return button
//    }()
//    
//    
//    @objc private func enterButtonAction() {
//        guard let window = UIApplication.shared.windows.first else {
//            fatalError("Invalid Configuration")
//        }
//        window.rootViewController = TabBarController.configure()
//        UserDefaults.standard.set(true, forKey: "isOnbordingShown")
//    }
//   
//}
//
//extension UIView {
//    
//    func addBackground(image: String) {
//        let width = UIScreen.main.bounds.size.width
//        let height = UIScreen.main.bounds.size.height
//        let imageViewBackground = UIImageView(frame: CGRectMake(0, 0, width, height))
//        imageViewBackground.image = UIImage(named: image)
//        imageViewBackground.contentMode = UIView.ContentMode.scaleAspectFill
//        self.addSubview(imageViewBackground)
//        self.sendSubviewToBack(imageViewBackground)
//    }
//}


