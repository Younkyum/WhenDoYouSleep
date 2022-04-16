//
//  ViewController.swift
//  WhenDoYouSleep?
//
//  Created by Jin younkyum on 2022/04/13.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - StoryBoard
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var nightShiftButton: UIButton!

    // MARK: - AutoLayout
    // MARK: - HEAD
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
        label.font = .systemFont(ofSize: 35, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let threeHourTimeLabel: UILabel = {
        let label = UILabel()
        
        label.text = "00:00:00"
        label.textColor = .yellow
        label.font = .systemFont(ofSize: 35, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let fourHourHalfTimeLabel: UILabel = {
        let label = UILabel()
        
        label.text = "00:00:00"
        label.textColor = .yellow
        label.font = .systemFont(ofSize: 35, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let sixHourTimeLabel: UILabel = {
        let label = UILabel()
        
        label.text = "00:00:00"
        label.textColor = .green
        label.font = .systemFont(ofSize: 35, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let sevenHourHalfTimeLabel: UILabel = {
        let label = UILabel()
        
        label.text = "00:00:00"
        label.textColor = .green
        label.font = .systemFont(ofSize: 35, weight: .regular)
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
        datePicker.preferredDatePickerStyle = .wheels
        datePicker.setValue(UIColor.white, forKeyPath: "textColor")
        datePicker.datePickerMode = .time
        datePicker.minuteInterval = 10
        datePicker.translatesAutoresizingMaskIntoConstraints = false
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
        label.font = .systemFont(ofSize: 35, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let sevenHourHalfTimeLabel2: UILabel = {
        let label = UILabel()
        
        label.text = "00:00:00"
        label.textColor = .green
        label.font = .systemFont(ofSize: 35, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - Properties
    var timer: Timer!
    var nextTimer: Timer!
    var backgroundIsGradient = false

    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if #available(iOS 13.0, *) {
            overrideUserInterfaceStyle = .light
        }
        
        addAllViews()
        addAllAutoLayout()
        setDefaultTime()
        
        self.backgroundImageView.alpha = 0.0
        self.nightShiftButton.isSelected = true
        
        timePicker.addTarget(self, action: #selector(timePickerMethod(_:)), for: .valueChanged)
        
        timer = Timer.scheduledTimer(timeInterval: 0.5,
                                     target: self,
                                     selector: #selector(getNowTime),
                                     userInfo: nil,
                                     repeats: true)
        nextTimer = Timer.scheduledTimer(timeInterval: 0.5,
                                         target: self,
                                         selector: #selector(timeSet),
                                         userInfo: nil,
                                         repeats: true)
        
        nightShiftButton.addTarget(self, action: #selector(nightShiftButtonPush(_:)), for: .touchUpInside)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    // MARK: - Methods
    
    func setDefaultTime() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "a hh:mm"
        
        sixHourTimeLabel2.text = dateFormatter.string(from: Date(timeIntervalSinceNow: -21600))
        sevenHourHalfTimeLabel2.text = dateFormatter.string(from: Date(timeIntervalSinceNow: -27000))
    }
    
    @objc func timePickerMethod(_ sender: UIDatePicker) {
        let datePickerView = sender.date
        let formatter = DateFormatter()
        
        formatter.dateFormat = "a hh:mm"
        
        sixHourTimeLabel2.text = formatter.string(from: Date(timeInterval: -21600, since: datePickerView))
        sevenHourHalfTimeLabel2.text = formatter.string(from: Date(timeInterval: -27000, since: datePickerView))
    }
    
    @objc func getNowTime(){
        let now = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "a hh:mm"
        
        self.currnetTime.text = dateFormatter.string(from: now)
    }
    
    @objc func timeSet() {
        let ct = DateFormatter()
        ct.dateFormat = "a hh: mm"
        
        oneHourHalfTimeLabel.text = ct.string(from: Date(timeIntervalSinceNow: 5400))
        threeHourTimeLabel.text = ct.string(from: Date(timeIntervalSinceNow: 10800))
        fourHourHalfTimeLabel.text = ct.string(from: Date(timeIntervalSinceNow: 16200))
        sixHourTimeLabel.text = ct.string(from: Date(timeIntervalSinceNow: 21600))
        sevenHourHalfTimeLabel.text = ct.string(from: Date(timeIntervalSinceNow: 27000))
    }
    
    @objc func nightShiftButtonPush(_ sender: UIButton) {
        if backgroundIsGradient {
            backgroundIsGradient = false
            backgroundImageView.alpha = 0.0
            nightShiftButton.isSelected = true
        } else {
            backgroundIsGradient = true
            backgroundImageView.alpha = 1.0
            nightShiftButton.isSelected = false
        }
    }
}


extension ViewController {
    func addAllViews() {
        view.addSubview(currentTimeTitleLabel)
        view.addSubview(currnetTime)
        view.addSubview(ifYouSleepNowLabel)
        view.addSubview(oneHourHalfLabel)
        view.addSubview(threeHourLabel)
        view.addSubview(fourHourHalfLabel)
        view.addSubview(sixHourLabel)
        view.addSubview(sevenHourHalfLabel)
        view.addSubview(oneHourHalfTimeLabel)
        view.addSubview(threeHourTimeLabel)
        view.addSubview(fourHourHalfTimeLabel)
        view.addSubview(sixHourTimeLabel)
        view.addSubview(sevenHourHalfTimeLabel)

        view.addSubview(whenDoYouAwake)
        view.addSubview(timePicker)
        view.addSubview(howAboutThisTimelabel)
        view.addSubview(avaliableSleepTimeLabel)
        view.addSubview(sixHourLabel2)
        view.addSubview(sevenHourHalfLabel2)
        view.addSubview(sixHourTimeLabel2)
        view.addSubview(sevenHourHalfTimeLabel2)
    }
    
    func addAllAutoLayout() {
        currentTimeLabelAutoLayout()
        currentTimeTitleLabelAutoLayout()
        ifYouSleepNowAutoLayout()
        oneHourHalfLabelAutoLayout()
        threeHourLabelAutoLayout()
        fourHourHalfAutoLayout()
        sixHourLabelAutoLayout()
        sevenHourLabelAutoLayout()
        oneHourHalfTimeLabelLayout()
        threeHourTimeLabelLayout()
        fourHourHalfTimeLabelLayout()
        sixHourTimeLabelLayout()
        sevenHourHalfTimeLabelLayout()

        whenDoYouAwakeLayout()
        timePickerLayout()
        howAboutThisTimeLabelLayout()
        avaliableSleepTimeLabelLayout()
        sixHourLabel2Layout()
        sevenHourHalfLabel2Layout()
        sixHourTimeLabel2Layout()
        sevenHourHalfTimeLabel2Layout()
    }
}


//MARK: - AutoLayOut
extension ViewController {

    func currentTimeTitleLabelAutoLayout() {
        currentTimeTitleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 25).isActive = true
        currentTimeTitleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
    }
    
    func currentTimeLabelAutoLayout() {
        currnetTime.topAnchor.constraint(equalTo: self.currentTimeTitleLabel.bottomAnchor).isActive = true
        currnetTime.leadingAnchor.constraint(equalTo: self.currentTimeTitleLabel.leadingAnchor).isActive = true
    }
    
    func ifYouSleepNowAutoLayout() {
        ifYouSleepNowLabel.topAnchor.constraint(equalTo: self.currnetTime.bottomAnchor, constant: 5).isActive = true
        ifYouSleepNowLabel.leadingAnchor.constraint(equalTo: currentTimeTitleLabel.leadingAnchor).isActive = true
    }
    
    func oneHourHalfLabelAutoLayout() {
        oneHourHalfLabel.leadingAnchor.constraint(equalTo: self.currentTimeTitleLabel.leadingAnchor).isActive = true
        oneHourHalfLabel.topAnchor.constraint(equalTo: self.ifYouSleepNowLabel.bottomAnchor, constant: 15).isActive = true
    }
    
    func threeHourLabelAutoLayout() {
        threeHourLabel.leadingAnchor.constraint(equalTo: self.currentTimeTitleLabel.leadingAnchor).isActive = true
        threeHourLabel.topAnchor.constraint(equalTo: oneHourHalfLabel.bottomAnchor, constant: 20).isActive = true
    }
    
    func fourHourHalfAutoLayout() {
        fourHourHalfLabel.leadingAnchor.constraint(equalTo: self.currentTimeTitleLabel.leadingAnchor).isActive = true
        fourHourHalfLabel.topAnchor.constraint(equalTo: threeHourLabel.bottomAnchor, constant: 20).isActive = true
    }
    
    func sixHourLabelAutoLayout() {
        sixHourLabel.leadingAnchor.constraint(equalTo: self.currentTimeTitleLabel.leadingAnchor).isActive = true
        sixHourLabel.topAnchor.constraint(equalTo: fourHourHalfLabel.bottomAnchor, constant: 20).isActive = true
    }
    
    func sevenHourLabelAutoLayout() {
        sevenHourHalfLabel.leadingAnchor.constraint(equalTo: self.currentTimeTitleLabel.leadingAnchor).isActive = true
        sevenHourHalfLabel.topAnchor.constraint(equalTo: sixHourLabel.bottomAnchor, constant: 20).isActive = true
    }
    
    func oneHourHalfTimeLabelLayout() {
        oneHourHalfTimeLabel.centerYAnchor.constraint(equalTo: oneHourHalfLabel.centerYAnchor).isActive = true
        oneHourHalfTimeLabel.leadingAnchor.constraint(equalTo: oneHourHalfLabel.trailingAnchor, constant: 25).isActive = true
    }
    
    func threeHourTimeLabelLayout() {
        threeHourTimeLabel.leadingAnchor.constraint(equalTo: oneHourHalfTimeLabel.leadingAnchor).isActive = true
        threeHourTimeLabel.centerYAnchor.constraint(equalTo: threeHourLabel.centerYAnchor).isActive = true
    }
    
    func fourHourHalfTimeLabelLayout() {
        fourHourHalfTimeLabel.leadingAnchor.constraint(equalTo: oneHourHalfTimeLabel.leadingAnchor).isActive = true
        fourHourHalfTimeLabel.centerYAnchor.constraint(equalTo: fourHourHalfLabel.centerYAnchor).isActive = true
    }
    
    func sixHourTimeLabelLayout() {
        sixHourTimeLabel.leadingAnchor.constraint(equalTo: oneHourHalfTimeLabel.leadingAnchor).isActive = true
        sixHourTimeLabel.centerYAnchor.constraint(equalTo: sixHourLabel.centerYAnchor).isActive = true
    }
    
    func sevenHourHalfTimeLabelLayout() {
        sevenHourHalfTimeLabel.leadingAnchor.constraint(equalTo: oneHourHalfTimeLabel.leadingAnchor).isActive = true
        sevenHourHalfTimeLabel.centerYAnchor.constraint(equalTo: sevenHourHalfLabel.centerYAnchor).isActive = true
    }
    
    func whenDoYouAwakeLayout() {
        whenDoYouAwake.leadingAnchor.constraint(equalTo: currnetTime.leadingAnchor).isActive = true
        whenDoYouAwake.topAnchor.constraint(equalTo: sevenHourHalfLabel.bottomAnchor, constant: 15).isActive = true
    }
    
    func timePickerLayout() {
        timePicker.topAnchor.constraint(equalTo: whenDoYouAwake.bottomAnchor, constant: 5).isActive = true
        timePicker.heightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.14).isActive = true
        timePicker.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        timePicker.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor).isActive = true
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
        sixHourTimeLabel2.leadingAnchor.constraint(equalTo: oneHourHalfTimeLabel.leadingAnchor).isActive = true
        sixHourTimeLabel2.centerYAnchor.constraint(equalTo: sixHourLabel2.centerYAnchor).isActive = true
    }
    
    func sevenHourHalfLabel2Layout() {
        sevenHourHalfLabel2.leadingAnchor.constraint(equalTo: sixHourLabel2.leadingAnchor).isActive = true
        sevenHourHalfLabel2.topAnchor.constraint(equalTo: sixHourLabel2.bottomAnchor, constant: 20).isActive = true
    }
    
    func sevenHourHalfTimeLabel2Layout() {
        sevenHourHalfTimeLabel2.leadingAnchor.constraint(equalTo: oneHourHalfTimeLabel.leadingAnchor).isActive = true
        sevenHourHalfTimeLabel2.centerYAnchor.constraint(equalTo: sevenHourHalfLabel2.centerYAnchor).isActive = true
    }
}

extension UIView {
    @IBInspectable var conerRadius: CGFloat { // 모서리 둥글게
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
}
