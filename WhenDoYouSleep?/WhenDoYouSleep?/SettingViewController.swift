//
//  SettingViewController.swift
//  WhenDoYouSleep
//
//  Created by Jin younkyum on 2022/05/10.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet weak var themeTableView: UITableView!
    
    var theme = UserDefaults.standard.integer(forKey: themeKey)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        view.backgroundColor = themes[theme][0]
        themeTableViewStyle()
        themeTableView.register(UINib(nibName: "settingTableViewCell", bundle: .main), forCellReuseIdentifier: "settingTableViewCell")
        // Do any additional setup after loading the view.
    }
    
    func themeTableViewStyle() {
        themeTableView.backgroundColor = themes[theme][0]
        themeTableView.separatorColor = themes[theme][2]
        themeTableView.separatorInset.right = 10
        themeTableView.separatorInset.left = 10
    }

}

extension SettingViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return themes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = themeTableView.dequeueReusableCell(withIdentifier: "settingTableViewCell", for: indexPath) as? settingTableViewCell else { return UITableViewCell() }
        cell.backgroundColor = themes[theme][0]
        cell.themeColor.backgroundColor = themes[indexPath.row][0]
        cell.nameLabel.text = themeNames[indexPath.row]
        cell.nameLabel.textColor = themes[theme][2]
        cell.checkImage.tintColor = .white
        cell.num1.backgroundColor = themes[indexPath.row][1]
        cell.num2.backgroundColor = themes[indexPath.row][1]
        cell.num3.backgroundColor = themes[indexPath.row][1]
        
        if indexPath.row == theme {
            cell.checkImage.image = UIImage(systemName: "circle.inset.filled")
        } else {
            cell.checkImage.image = UIImage(systemName: "circle")
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        UserDefaults.standard.set(indexPath.row, forKey: themeKey)
        theme = indexPath.row
        
        themeTableViewStyle()
        view.backgroundColor = themes[theme][0]
        themeTableView.reloadData()
    }
}
