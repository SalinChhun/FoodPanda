//
//  FavorieViewController.swift
//  FoodPanda
//
//  Created by PVH_002 on 5/9/23.
//

import UIKit

class FavorieViewController: UIViewController {


    @IBOutlet weak var tpRestaurants: UIButton!
    @IBOutlet weak var tpShops: UIButton!
    @IBOutlet weak var btnDelivery: UIButton!
    @IBOutlet weak var btnPickUp: UIButton!
    @IBOutlet weak var restaurantsRec: UIView!
    @IBOutlet weak var shopsRec: UIView!
    
    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        btnDelivery.layer.cornerRadius = 20
        btnDelivery.layer.borderWidth = 0.5
        btnPickUp.layer.cornerRadius = 20
        btnPickUp.layer.borderWidth = 0.5
        button.layer.cornerRadius = 5
        btnPickUp.backgroundColor = #colorLiteral(red: 0.9453211427, green: 0.1695788801, blue: 0.5068494678, alpha: 1)
 
    }

    @IBAction func btnDelivery(_ sender: Any) {
        btnDelivery.backgroundColor = #colorLiteral(red: 0.9453211427, green: 0.1695788801, blue: 0.5068494678, alpha: 1)
        btnPickUp.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    @IBAction func btnPickUp(_ sender: Any) {
        btnPickUp.backgroundColor = #colorLiteral(red: 0.9453211427, green: 0.1695788801, blue: 0.5068494678, alpha: 1)
        btnDelivery.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    @IBAction func tpRestaurants(_ sender: Any) {
        restaurantsRec.backgroundColor = #colorLiteral(red: 0.9453211427, green: 0.1695788801, blue: 0.5068494678, alpha: 1)
        shopsRec.backgroundColor = #colorLiteral(red: 0.6807412505, green: 0.680747509, blue: 0.6998410821, alpha: 1)
        tpRestaurants.titleLabel?.textColor = #colorLiteral(red: 0.9453211427, green: 0.1695788801, blue: 0.5068494678, alpha: 1)
        tpShops.titleLabel?.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
    @IBAction func tpShops(_ sender: Any) {
        shopsRec.backgroundColor = #colorLiteral(red: 0.9453211427, green: 0.1695788801, blue: 0.5068494678, alpha: 1)
        restaurantsRec.backgroundColor = #colorLiteral(red: 0.6807412505, green: 0.680747509, blue: 0.6998410821, alpha: 1)
        tpShops.tintColor = #colorLiteral(red: 0.9453211427, green: 0.1695788801, blue: 0.5068494678, alpha: 1)
        tpRestaurants.titleLabel?.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
    @IBAction func back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    

}
