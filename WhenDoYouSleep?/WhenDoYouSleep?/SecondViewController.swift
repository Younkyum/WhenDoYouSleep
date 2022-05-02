//
//  SecondViewController.swift
//  WhenDoYouSleep
//
//  Created by Jin younkyum on 2022/04/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    var timeIntervalName = ["7시간 30분", "6시간", "4시간 30분", "3시간", "1시간 30분"]
    var timeInterval = [-27000, -21600, -16200, -10800, -5400]
    
    @IBOutlet weak var pickerViewView: UIView!
    
    // MARK: - Theme
    // 0 = background / 1 = cell / 2 = label
    var themes = [[UIColor(rgb: 0x334557), UIColor(rgb: 0x588195), UIColor(rgb: 0xeff0f2)],
                  [UIColor(rgb: 0x748c70), UIColor(rgb: 0x455d3e), UIColor(rgb: 0xe8e7e3)],
                  [UIColor(rgb: 0xbb937e), UIColor(rgb: 0x915549), UIColor(rgb: 0xececee)]]
    //rgb(67, 79, 120)
    var theme = 1
    
    @IBOutlet weak var timePicker: UIDatePicker!
    @IBOutlet weak var timeCollectionView: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if #available(iOS 13.0, *) {
            overrideUserInterfaceStyle = .light
        }
        
        self.pickerViewView.backgroundColor = themes[theme][1]
        self.timeCollectionView.tintColor = themes[theme][2]
        self.view.backgroundColor = themes[theme][0]
        self.timeCollectionView.backgroundColor = themes[theme][0]
        timePicker.setValue(UIColor.white, forKey: "textColor")
        
        self.timeCollectionView.register(UINib(nibName: "secondTimeCollectionViewCell", bundle: .main),
                                         forCellWithReuseIdentifier: "secondTimeCollectionViewCell")
        setupFlowLayout()
    }
    
    @IBAction func buttonPushed(_ sender: Any) {
        timeCollectionView.reloadData()
    }
    
    
    private func setupFlowLayout() {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets.zero
        flowLayout.minimumLineSpacing = 10
        
        let halfWidth = UIScreen.main.bounds.width / 2
        flowLayout.itemSize = CGSize(width: halfWidth * 1.83, height: halfWidth * 0.45)
        self.timeCollectionView.collectionViewLayout = flowLayout
    }


}

extension SecondViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "secondTimeCollectionViewCell", for: indexPath) as? secondTimeCollectionViewCell else { return UICollectionViewCell() }
        
        cell.view.backgroundColor = themes[theme][1]
        cell.timeIntervalLabel.textColor = themes[theme][2]
        cell.timeLabel.textColor = themes[theme][2]
        
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = "aa hh:mm"
        
        cell.timeLabel.text = dateformatter.string(from: Date(timeInterval: TimeInterval(timeInterval[indexPath.row]),
                                                              since: timePicker.date))
        cell.timeIntervalLabel.text = timeIntervalName[indexPath.row]
        
        return cell
    }
    
    
}
