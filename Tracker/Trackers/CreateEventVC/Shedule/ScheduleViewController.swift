//
//  ScheduleViewController.swift
//  Tracker
//  Created by Ольга Чушева on 18.02.2024.
//


import UIKit

protocol ScheduleVCDelegate: AnyObject {
    func createSchedule(schedule: [WeekDay])
}

class ScheduleViewController: UIViewController {
    
    public weak var delegate: ScheduleVCDelegate?
    var schedule: [WeekDay] = []
    private lazy var label: UILabel = {
        let label = UILabel()
        label.textColor = .ypBlack
        label.text = "Расписание"
        label.font = .systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var enterButton: UIButton = {
        let button = UIButton()
        button.setTitle("Готово", for: .normal)
        button.titleLabel?.textColor = .white
        button.backgroundColor = .ypBlack
        button.layer.cornerRadius = 16
        button.addTarget(self, action: #selector(enterButtonAction), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        var width = view.frame.width - 16*2
        var height = 7*75
        tableView.register(WeekDayTableViewCell.self, forCellReuseIdentifier: WeekDayTableViewCell.identifier)
        tableView.layer.cornerRadius = 16
        tableView.separatorColor = .ypGray
        tableView.frame = CGRect(x: 16, y: 79, width: Int(width), height: height)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addSubviews()
        setupLayout()
    }
    
    private func addSubviews() {
        view.addSubview(label)
        view.addSubview(enterButton)
        view.addSubview(tableView)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 27),
            
            enterButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            enterButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            enterButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            enterButton.heightAnchor.constraint(equalToConstant: 60),
        ])
    }
    
    @objc
    private func enterButtonAction() {
        delegate?.createSchedule(schedule: schedule)
        dismiss(animated: true)
    }
}

extension ScheduleViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return WeekDay.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let weekDayCell = tableView.dequeueReusableCell(withIdentifier: WeekDayTableViewCell.identifier) as? WeekDayTableViewCell else {
            return UITableViewCell()
        }
        let weekDay = WeekDay.allCases[indexPath.row]
        weekDayCell.delegate = self
        weekDayCell.contentView.backgroundColor = .backgroundColor
        weekDayCell.label.text = WeekDay.allCases[indexPath.row].rawValue
        weekDayCell.weekDay = weekDay
        weekDayCell.switchCell.isOn = schedule.contains(weekDay)
        if indexPath.row == 6 {
            weekDayCell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
        } else {
            weekDayCell.separatorInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        }
        weekDayCell.selectionStyle = .none
        return weekDayCell
    }
}

extension ScheduleViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) { 
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension ScheduleViewController: WeekDayTableViewCellDelegate {
    
    func stateChanged(for day: WeekDay, isOn: Bool) {
        if isOn {
            schedule.append(day)
        } else {
            if let index = schedule.firstIndex(of: day) {
                schedule.remove(at: index)
            }
        }
    }
}


