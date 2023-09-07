//
//  TableViewCell.swift
//  FoodPanda
//
//  Created by PVH_002 on 4/9/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }




    @IBOutlet weak var topRightImg: UIImageView!
    @IBOutlet weak var buttomRightImg: UIImageView!
    @IBOutlet weak var buttomLeftImg: UIImageView!
    @IBOutlet weak var topBannerImg: UIImageView!
    @IBOutlet weak var buttomRight: UIView!
    @IBOutlet weak var topRight: UIView!
    @IBOutlet weak var topBanner: UIView!
    @IBOutlet weak var buttomLeft: UIView!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        topBanner.layer.cornerRadius = 10
        topRight.layer.cornerRadius = 10
        buttomLeft.layer.cornerRadius = 10
        buttomRight.layer.cornerRadius = 10 
    }
    
}

