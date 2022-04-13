//
//  ViewController.swift
//  WhenDoYouSleep?
//
//  Created by Jin younkyum on 2022/04/13.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - AutoLayout
    // MARK: HEAD
    let currentTimeTitleLabel: UILabel = {
        let label = UILabel()
        
        label.text = "현재 시간"
        label.textColor = .green
        label.font = .systemFont(ofSize: 20, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let currnetTime: UILabel = {
       let label = UILabel()
        
        label.text = "00:00:00"
        label.textColor = .green
        label.font = .systemFont(ofSize: 50, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    // MARK: If you sleep now part
    let ifYouSleepNowLabel: UILabel = {
       let label = UILabel()
        
        label.text = "지금부터 잔다면?"
        label.textColor = .green
        label.font = .systemFont(ofSize: 20, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let oneHourHalfLabel: UILabel = {
        let label = UILabel()
        
        label.text = "1시간 30분"
        label.textColor = .red
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let threeHourLabel: UILabel = {
        let label = UILabel()
        
        label.text = "3시간"
        label.textColor = .yellow
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let fourHourHalfLabel: UILabel = {
        let label = UILabel()
        
        label.text = "4시간 30분"
        label.textColor = .yellow
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let sixHourLabel: UILabel = {
        let label = UILabel()
        
        label.text = "6시간"
        label.textColor = .green
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let sevenHourHalfLabel: UILabel = {
        let label = UILabel()
        
        label.text = "7시간 30분"
        label.textColor = .green
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let oneHourHalfTimeLabel: UILabel = {
        let label = UILabel()
        
        label.text = "00:00:00"
        label.textColor = .red
        label.font = .systemFont(ofSize: 33, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let threeHourTimeLabel: UILabel = {
        let label = UILabel()
        
        label.text = "00:00:00"
        label.textColor = .yellow
        label.font = .systemFont(ofSize: 33, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let fourHourHalfTimeLabel: UILabel = {
        let label = UILabel()
        
        label.text = "00:00:00"
        label.textColor = .yellow
        label.font = .systemFont(ofSize: 33, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let sixHourTimeLabel: UILabel = {
        let label = UILabel()
        
        label.text = "00:00:00"
        label.textColor = .green
        label.font = .systemFont(ofSize: 33, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let sevenHourHalfTimeLabel: UILabel = {
        let label = UILabel()
        
        label.text = "00:00:00"
        label.textColor = .green
        label.font = .systemFont(ofSize: 33, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    // MARK: When do you awake part
    let whenDoYouAwake: UILabel = {
        let label = UILabel()
        
        label.text = "언제 일어날래?"
        label.textColor = .green
        label.font = .systemFont(ofSize: 20, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let timePicker: UIDatePicker = {
        let datePicker = UIDatePicker()
        return datePicker
    }()
    
    let howAboutThisTimelabel: UILabel = {
        let label = UILabel()
        
        label.text = "이 시간은 어떤가요?"
        label.textColor = .green
        label.font = .systemFont(ofSize: 20, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let avaliableSleepTimeLabel: UILabel = {
        let label = UILabel()
        
        label.text = "취침 가능 시간"
        label.textColor = .green
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let sixHourLabel2: UILabel = {
        let label = UILabel()
        
        label.text = "6시간"
        label.textColor = .green
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let sevenHourHalfLabel2: UILabel = {
        let label = UILabel()
        
        label.text = "7시간 30분"
        label.textColor = .green
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let sixHourTimeLabel2: UILabel = {
        let label = UILabel()
        
        label.text = "00:00:00"
        label.textColor = .green
        label.font = .systemFont(ofSize: 33, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let sevenHourHalfTimeLabel2: UILabel = {
        let label = UILabel()
        
        label.text = "00:00:00"
        label.textColor = .green
        label.font = .systemFont(ofSize: 33, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}

//MARK: - AutoLayOut
extension ViewController {
    func currentTimeTitleLabelAutoLayout() {
        currentTimeTitleLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        currentTimeTitleLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 10).isActive = true
    }
    
    func currentTimeLabelAutoLayout() {
        currnetTime.topAnchor.constraint(equalTo: self.currentTimeTitleLabel.bottomAnchor).isActive = true
        currnetTime.leadingAnchor.constraint(equalTo: self.currentTimeTitleLabel.leadingAnchor).isActive = true
    }
    
    func ifYouSleepNowAutoLayout() {
        ifYouSleepNowLabel.topAnchor.constraint(equalTo: self.currnetTime.bottomAnchor, constant: 20).isActive = true
        ifYouSleepNowLabel.leadingAnchor.constraint(equalTo: currentTimeTitleLabel.leadingAnchor).isActive = true
    }
    
    func oneHourHalfLabelAutoLayout() {
        oneHourHalfLabel.leadingAnchor.constraint(equalTo: self.currentTimeTitleLabel.leadingAnchor).isActive = true
        oneHourHalfLabel.topAnchor.constraint(equalTo: self.ifYouSleepNowLabel.bottomAnchor, constant: 15).isActive = true
    }
    
    func threeHourLabelAutoLayout() {
        threeHourLabel.leadingAnchor.constraint(equalTo: self.currentTimeTitleLabel.leadingAnchor).isActive = true
        threeHourLabel.topAnchor.constraint(equalTo: oneHourHalfLabel.bottomAnchor, constant: 25).isActive = true
    }
    
    func fourHourHalfAutoLayout() {
        fourHourHalfLabel.leadingAnchor.constraint(equalTo: self.currentTimeTitleLabel.leadingAnchor).isActive = true
        fourHourHalfLabel.topAnchor.constraint(equalTo: oneHourHalfLabel.bottomAnchor, constant: 25).isActive = true
    }
    
    func sixHourLabelAutoLayout() {
        sixHourLabel.leadingAnchor.constraint(equalTo: self.currentTimeTitleLabel.leadingAnchor).isActive = true
        sixHourLabel.topAnchor.constraint(equalTo: fourHourHalfLabel.bottomAnchor, constant: 25).isActive = true
    }
    
    func sevenHourLabelAutoLayout() {
        sevenHourHalfLabel.leadingAnchor.constraint(equalTo: self.currentTimeTitleLabel.leadingAnchor).isActive = true
        sevenHourHalfLabel.topAnchor.constraint(equalTo: sixHourLabel.bottomAnchor, constant: 25).isActive = true
    }
    
    func oneHourHalfTimeLabelLayout() {
        oneHourHalfTimeLabel.centerYAnchor.constraint(equalTo: oneHourHalfLabel.centerYAnchor).isActive = true
        oneHourHalfTimeLabel.leadingAnchor.constraint(equalTo: oneHourHalfLabel.trailingAnchor, constant: 25).isActive = true
    }
    
    func threeHourTimeLabelLayout() {
        threeHourTimeLabel.centerXAnchor.constraint(equalTo: oneHourHalfTimeLabel.centerXAnchor).isActive = true
        threeHourTimeLabel.centerYAnchor.constraint(equalTo: threeHourLabel.centerYAnchor).isActive = true
    }
    
    func fourHourHalfTimeLabelLayout() {
        fourHourHalfTimeLabel.centerXAnchor.constraint(equalTo: oneHourHalfTimeLabel.centerXAnchor).isActive = true
        fourHourHalfTimeLabel.centerYAnchor.constraint(equalTo: fourHourHalfLabel.centerYAnchor).isActive = true
    }
    
    func sixHourTimeLabelLayout() {
        sixHourTimeLabel.centerXAnchor.constraint(equalTo: oneHourHalfLabel.centerXAnchor).isActive = true
        sixHourTimeLabel.centerYAnchor.constraint(equalTo: sixHourLabel.centerYAnchor).isActive = true
    }
    
    func sevenHourHalfTimeLabelLayout() {
        sevenHourHalfTimeLabel.centerXAnchor.constraint(equalTo: oneHourHalfTimeLabel.centerXAnchor).isActive = true
        sevenHourHalfTimeLabel.centerYAnchor.constraint(equalTo: sevenHourHalfLabel.centerYAnchor).isActive = true
    }
    
    func whenDoYouAwakeLayout() {
        whenDoYouAwake.leadingAnchor.constraint(equalTo: currnetTime.leadingAnchor).isActive = true
        whenDoYouAwake.topAnchor.constraint(equalTo: sevenHourHalfLabel.bottomAnchor, constant: 30).isActive = true
    }
    
    func timePickerLayout() {
        timePicker.topAnchor.constraint(equalTo: whenDoYouAwake.bottomAnchor, constant: 5).isActive = true
        timePicker.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        timePicker.trailingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
    }
    
    func howAboutThisTimeLabelLayout() {
        howAboutThisTimelabel.leadingAnchor.constraint(equalTo: currentTimeTitleLabel.leadingAnchor).isActive = true
        howAboutThisTimelabel.topAnchor.constraint(equalTo: timePicker.bottomAnchor).isActive = true
    }
    
    func avaliableSleepTimeLabelLayout() {
        avaliableSleepTimeLabel.leadingAnchor.constraint(equalTo: currentTimeTitleLabel.leadingAnchor).isActive = true
        avaliableSleepTimeLabel.topAnchor.constraint(equalTo: howAboutThisTimelabel.bottomAnchor).isActive = true
    }
    
    func sixHourLabel2Layout() {
        sixHourLabel2.leadingAnchor.constraint(equalTo: currentTimeTitleLabel.leadingAnchor).isActive = true
        sixHourLabel2.topAnchor.constraint(equalTo: avaliableSleepTimeLabel.bottomAnchor, constant: 10).isActive = true
    }
    
    func sixHourTimeLabel2Layout() {
        sixHourTimeLabel2.centerXAnchor.constraint(equalTo: oneHourHalfTimeLabel.centerXAnchor).isActive = true
        sixHourTimeLabel2.centerYAnchor.constraint(equalTo: sixHourLabel2.centerYAnchor).isActive = true
    }
    
    func sevenHourHalfLabel2Layout() {
        sevenHourHalfLabel2.leadingAnchor.constraint(equalTo: sixHourLabel2.leadingAnchor).isActive = true
        sevenHourHalfLabel2.topAnchor.constraint(equalTo: sixHourLabel2.bottomAnchor, constant: 25).isActive = true
    }
    
    func sevenHourHalfTimeLabel2Layout() {
        sevenHourHalfTimeLabel2.centerXAnchor.constraint(equalTo: oneHourHalfTimeLabel.centerXAnchor).isActive = true
        sevenHourHalfTimeLabel2.centerYAnchor.constraint(equalTo: sevenHourHalfLabel2.centerYAnchor).isActive = true
    }
}














