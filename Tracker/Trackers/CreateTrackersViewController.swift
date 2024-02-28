//
//  CreateTrackersViewController.swift
//  Tracker
//
//  CCreated by Ольга Чушева on 19.02.2024.
//


import UIKit

protocol CreateTrackerVCDelegate: AnyObject {
    func createTracker(_ tracker: Tracker, categoryName: String)
}


class LabelMakeTreaker: UILabel {
    
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        setupLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLabel() {
        textColor = .black
        font = .systemFont(ofSize: 16, weight: .medium)
        
    }
}

class ButtonMakeTreaker: UIButton {
    override init(frame: CGRect) {
        super .init(frame: frame)
        setupButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupButton() {
        setTitleShadowColor(.white, for: .normal)
        backgroundColor = .black
        titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
        titleLabel?.textColor = .white
        layer.cornerRadius = 16

    }
}

class CreateTrackersViewController: UIViewController {
    
    public weak var delegate: CreateTrackerVCDelegate?
    
    let stackButtons = UIStackView()
    let labelMaking = LabelMakeTreaker()
    let buttonMaking = ButtonMakeTreaker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        configurateLabel()
        configurateStackView()
    }

    
    func configurateLabel() {
        
        view.addSubview(labelMaking)
        
        labelMaking.text = "Создание трекерa"
        labelMaking.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            labelMaking.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 28),
            labelMaking.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)

        ])
    }
    

    func configurateStackView() {
        configurateButtons()
        view.addSubview(stackButtons)
        
        stackButtons.axis = .vertical
        stackButtons.distribution = .fillEqually
        stackButtons.spacing = 20

   
    stackButtons.translatesAutoresizingMaskIntoConstraints = false
  
    NSLayoutConstraint.activate([
        stackButtons.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
        stackButtons.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
        stackButtons.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant:  20),
        stackButtons.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant:  -20),
        stackButtons.heightAnchor.constraint(equalToConstant: 130)
    ])
    
}
    
    func configurateButtons() {
        
        let button1 = ButtonMakeTreaker()
        let button2 = ButtonMakeTreaker()
        
        button1.setTitle("Привычка", for: .normal)
        button1.addTarget(self, action: #selector(regularEventButtonAction), for: .touchUpInside)
        
        button2.setTitle("Нерегулярное событие", for: .normal)
        button2.addTarget(self, action: #selector(irregularEventButtonAction), for: .touchUpInside)
        
        stackButtons.addArrangedSubview(button1)
        stackButtons.addArrangedSubview(button2)
 
    }
    
    @objc private func irregularEventButtonAction() {
        let createRegularEventVC = CreateEventViewController(.irregular)
        createRegularEventVC.delegate = self
        present(createRegularEventVC, animated: true)
    }
    
    @objc private func regularEventButtonAction() {
        let createRegularEventVC = CreateEventViewController(.regular)
        createRegularEventVC.delegate = self
        present(createRegularEventVC, animated: true)
    }
}

extension CreateTrackersViewController: CreateEventVCDelegate {
    
    func createTracker(_ tracker: Tracker, categoryName: String) {
        delegate?.createTracker(tracker, categoryName: categoryName)
        dismiss(animated: true)
    }
}

