//
//  TrackerCollectionViewCell.swift
//  Tracker
//
//  Created by Ольга Чушева on 25.02.2024.
//

import Foundation
import UIKit

protocol TrackersCollectionViewCellDelegate: AnyObject {
    func completedTracker(id: UUID)
}

final class TrackersCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "trackersCollectionViewCell"
    
    public weak var delegate: TrackersCollectionViewCellDelegate?
    private var isCompletedToday: Bool = false
    private var trackerId: UUID? = nil
    private let limitNumberOfCharacters = 38
    
    private lazy var trackerView: UIView = {
        let trackerView = UIView()
        trackerView.layer.cornerRadius = 16
        trackerView.translatesAutoresizingMaskIntoConstraints = false
        return trackerView
    }()
    
    private lazy var emojiView: UIView = {
        let emojiView = UIView()
        emojiView.backgroundColor = UIColor(white: 1, alpha: 0.5)
        emojiView.layer.cornerRadius = 12
        emojiView.translatesAutoresizingMaskIntoConstraints = false
        return emojiView
    }()
    
    private lazy var emojiLabel: UILabel = {
        let emojiLabel = UILabel()
        emojiLabel.translatesAutoresizingMaskIntoConstraints = false
        return emojiLabel
    }()
    
    private lazy var trackerNameLabel: UILabel = {
        let trackerNameLabel = UILabel()
        trackerNameLabel.font = .systemFont(ofSize: 12, weight: .medium)
        trackerNameLabel.numberOfLines = 2
        trackerNameLabel.text = "Название трекера "
        trackerNameLabel.textColor = .white
        trackerNameLabel.translatesAutoresizingMaskIntoConstraints = false
        return trackerNameLabel
    }()
    
    private lazy var resultLabel: UILabel = {
        let resultLabel = UILabel()
        resultLabel.text = "0 дней"
        resultLabel.font = .systemFont(ofSize: 12, weight: .medium)
        resultLabel.translatesAutoresizingMaskIntoConstraints = false
        return resultLabel
    }()
    
    private lazy var checkButton: UIButton = {
        let checkButton = UIButton()
        checkButton.setImage(UIImage(named: "plus"), for: .normal)
        checkButton.addTarget(self, action: #selector(didTapCheckButton), for: .touchUpInside)
        checkButton.backgroundColor?.withAlphaComponent(1)
     
        checkButton.tintColor = .white
        checkButton.layer.cornerRadius = 20
        checkButton.translatesAutoresizingMaskIntoConstraints = false
        return checkButton
    }()
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(trackerView)
        trackerView.addSubview(emojiView)
        emojiView.addSubview(emojiLabel)
        trackerView.addSubview(trackerNameLabel)
        contentView.addSubview(resultLabel)
        contentView.addSubview(checkButton)

        
        NSLayoutConstraint.activate([
            
            trackerView.heightAnchor.constraint(equalToConstant: 90),
            trackerView.widthAnchor.constraint(equalToConstant: 167),
            trackerView.topAnchor.constraint(equalTo: contentView.topAnchor),
            trackerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            
            emojiView.heightAnchor.constraint(equalToConstant: 24),
            emojiView.widthAnchor.constraint(equalToConstant: 24),
            emojiView.topAnchor.constraint(equalTo: trackerView.topAnchor, constant: 12),
            emojiView.leadingAnchor.constraint(equalTo: trackerView.leadingAnchor, constant: 12),
            
            emojiLabel.centerYAnchor.constraint(equalTo: emojiView.centerYAnchor) ,
            emojiLabel.centerYAnchor.constraint(equalTo: emojiView.centerYAnchor),
            
            trackerNameLabel.topAnchor.constraint(equalTo: trackerView.topAnchor, constant: 44),
            trackerNameLabel.trailingAnchor.constraint(equalTo: trackerView.trailingAnchor, constant: -12),
            trackerNameLabel.leadingAnchor.constraint(equalTo: trackerView.leadingAnchor, constant: 12),
            trackerNameLabel.heightAnchor.constraint(equalToConstant: 34),
            
            
            checkButton.topAnchor.constraint(equalTo: trackerView.bottomAnchor, constant: 8),
            checkButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            checkButton.heightAnchor.constraint(equalToConstant: 40),
            checkButton.widthAnchor.constraint(equalToConstant: 40 ),
            
            resultLabel.centerYAnchor.constraint(equalTo: checkButton.centerYAnchor),
            resultLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    @objc private func didTapCheckButton() {
        guard let id = trackerId else {
            print("Id not set")
            return
        }
        delegate?.completedTracker(id: id)
    }
    
    func configure(
        _ id: UUID,
        name: String,
        color: UIColor,
        emoji: String,
        isCompleted: Bool,
        isEnabled: Bool,
        completedCount: Int
    ) {
        let mod10 = completedCount % 10
        let mod100 = completedCount % 100
        let not10To20 = mod100 < 10 || mod100 > 20
        var str = "\(completedCount) "
        
        trackerId = id
        trackerNameLabel.text = name
        trackerView.backgroundColor = color

        emojiLabel.text = emoji
        isCompletedToday = isCompleted
        checkButton.setImage(isCompletedToday ? UIImage(systemName: "checkmark")! : UIImage(systemName: "plus")!, for: .normal)
        
        checkButton.backgroundColor = (isCompletedToday ? color.withAlphaComponent(0.5)  : color.withAlphaComponent(1))

        checkButton.isEnabled = isEnabled
        
        if completedCount == 0 {
            str += "дней"
        } else if mod10 == 1 && not10To20 {
            str += "день"
        } else if (mod10 == 2 || mod10 == 3 || mod10 == 4) && not10To20 {
            str += "дня"
        } else {
            str += "дней"
        }
        resultLabel.text = str
    }
}
