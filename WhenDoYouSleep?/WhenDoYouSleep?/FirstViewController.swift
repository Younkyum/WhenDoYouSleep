//
//  FirstViewController.swift
//  WhenDoYouSleep
//
//  Created by Jin younkyum on 2022/04/23.
//

import UIKit

class FirstViewController: UIViewController {
    var timeIntervalName = ["1시간 30분", "3시간", "4시간 30분", "6시간", "7시간 30분", "9시간", "10시간 30분"]
    var timeInterval = [5400, 10800, 16200, 21600, 27000, 32400, 37800]
    
    // MARK: - Theme
    var theme = UserDefaults.standard.integer(forKey: themeKey)
    
    
    @IBOutlet weak var wakeUpTimeLabel: UILabel!
    @IBOutlet weak var currentTimeTitleLabel: UILabel!
    @IBOutlet weak var currentTimeLabel: UILabel!
    @IBOutlet weak var timeCollectionView: UICollectionView!
    
    override func viewWillAppear(_ animated: Bool) {
        theme = UserDefaults.standard.integer(forKey: themeKey)
        allStyle()
        timeCollectionView.reloadData()
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        if #available(iOS 13.0, *) {
            overrideUserInterfaceStyle = .light
        }
        
        self.timeCollectionView.register(UINib(nibName: "firstTimeCollectionViewCell", bundle: .main), forCellWithReuseIdentifier: "firstTimeCollectionViewCell")
        currentTimeLabelChange()
        setupFlowLayout()
        
        
        allStyle()
    }
    
    func allStyle() {
        self.view.backgroundColor = themes[theme][0]
        self.timeCollectionView.backgroundColor = themes[theme][0]
    }
    
    private func currentTimeLabelChange() {
        let now = Date()
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = "aa hh:mm"
        
        currentTimeLabel.text = dateformatter.string(from: now)
    }
    
    private func setupFlowLayout() {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets.zero
        flowLayout.minimumLineSpacing = 10
        
        let halfWidth = UIScreen.main.bounds.width / 2
        flowLayout.itemSize = CGSize(width: halfWidth * 1.84, height: halfWidth * 0.45)
        self.timeCollectionView.collectionViewLayout = flowLayout
    }
    
}

extension FirstViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return timeInterval.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "firstTimeCollectionViewCell", for: indexPath) as? firstTimeCollectionViewCell else { return UICollectionViewCell() }
        
        cell.timeIntervalLabel.text = timeIntervalName[indexPath.row]
        cell.timeIntervalLabel.textColor = themes[theme][2]
        cell.view.backgroundColor = themes[theme][1]
       
        
        
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = "aa hh:mm"
        cell.timeLabel.text = dateformatter.string(from: Date(timeIntervalSinceNow: TimeInterval(timeInterval[indexPath.row])))
        
        return cell
    }
    
}
