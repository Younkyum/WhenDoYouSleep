//
//  FirstViewController.swift
//  WhenDoYouSleep
//
//  Created by Jin younkyum on 2022/04/23.
//

import UIKit

class FirstViewController: UIViewController {
    var timeIntervalName = ["1시간 30분", "3시간", "4시간 30분", "6시간", "7시간 30분"]
    var timeInterval = [5400, 10800, 16200, 21600, 27000]
    
    // MARK: - Theme
    // 0 = background / 1 = cell / 2 = label
    var themes = [[UIColor(rgb: 0x334557), UIColor(rgb: 0x588195), UIColor(rgb: 0xeff0f2)],
                  [UIColor(rgb: 0x748c70), UIColor(rgb: 0x455d3e), UIColor(rgb: 0xe8e7e3)],
                  [UIColor(rgb: 0xbb937e), UIColor(rgb: 0x915549), UIColor(rgb: 0xececee)]]
    //rgb(67, 79, 120)
    var theme = 1
    
    
    @IBOutlet weak var wakeUpTimeLabel: UILabel!
    @IBOutlet weak var currentTimeTitleLabel: UILabel!
    @IBOutlet weak var currentTimeLabel: UILabel!
    @IBOutlet weak var timeCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        if #available(iOS 13.0, *) {
            overrideUserInterfaceStyle = .light
        }
        
        self.timeCollectionView.register(UINib(nibName: "firstTimeCollectionViewCell", bundle: .main), forCellWithReuseIdentifier: "firstTimeCollectionViewCell")
        currentTimeLabelChange()
        setupFlowLayout()
        
        
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
        return 5
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
