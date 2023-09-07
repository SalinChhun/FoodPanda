//
//  ViewController.swift
//  FoodPanda
//
//  Created by PVH_002 on 2/9/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
//        searchBar.layer.borderColor = #colorLiteral(red: 0.9453211427, green: 0.1695788801, blue: 0.5068494678, alpha: 1)
        self.searchBar.searchTextField.clipsToBounds = true
        searchBar.setBackgroundImage(UIImage(), for: .any, barMetrics: .default)
        searchBar.placeholder = "Search for shops & restaurants"
        searchBar.searchTextField.backgroundColor = .white
        searchBar.searchTextField.layer.cornerRadius = 18
        searchBar.searchTextField.layer.masksToBounds = true
        tableView.delegate = self
        tableView.dataSource = self
        let nib = UINib(nibName: "TableViewCell", bundle: nil)
        let nib2 = UINib(nibName: "TableViewCell2", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "TableViewCell")
        tableView.register(nib2, forCellReuseIdentifier: "TableViewCell2")
    }
    


}
extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        var height:CGFloat = CGFloat()
        if indexPath.row == 0 {
            height = 338
        }
        else {
            height = 400
        }
        return height
    }
}

extension ViewController: UITableViewDataSource{

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
            cell.topBannerImg.image = UIImage(named: "pic1")
            cell.buttomLeftImg.image = UIImage(named: "pic3")
            cell.buttomRightImg.image = UIImage(named: "pic4")
            cell.topRightImg.image = UIImage(named: "pick-up")
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell2", for: indexPath) as! TableViewCell2
            return cell
        }
        
    }
    
    
}
