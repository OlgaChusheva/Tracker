//
//  StatisticsController.swift
//  Tracker
//
//  Created by Ольга Чушева on 11.02.2024.
//

import UIKit

class StatisticsController: UIViewController {
    
    var statisticImage = UIImageView()
    var imageSmile = UIImage(named: "SadSmile")
    var statisticLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .whiteYP
        
        
        statisticNavBar()
        noStatistic()
    }
    
    func statisticNavBar() {
        self.navigationItem.title = "Статистика"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.largeTitleDisplayMode = .always
        
    }
    
    func noStatistic() {
        
        statisticImage = UIImageView(image: imageSmile)
        statisticImage.translatesAutoresizingMaskIntoConstraints = false
        
        statisticLabel.text = "Анализировать пока нечего"
        statisticLabel.textColor = UIColor(named: "BlackYP")
        statisticLabel.font = .systemFont(ofSize: 12)
        statisticLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(statisticImage)
        view.addSubview(statisticLabel)
        applyConstraints()
        
         func applyConstraints() {
            NSLayoutConstraint.activate([
                statisticImage.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
                statisticImage.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
                statisticImage.widthAnchor.constraint(equalToConstant: 80),
                statisticImage.heightAnchor.constraint(equalToConstant: 80),
                
                statisticLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
                statisticLabel.topAnchor.constraint(equalTo: statisticImage.bottomAnchor, constant: 5)
            ])
        }
    }
}
