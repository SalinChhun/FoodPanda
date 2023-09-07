//
//  CollectionViewCell.swift
//  FoodPanda
//
//  Created by PVH_002 on 4/9/23.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    

    @IBOutlet weak var productImg: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var promotionLabel: UILabel!
    @IBOutlet weak var realeaseDate: UILabel!
    @IBOutlet weak var productDesc: UILabel!
    @IBOutlet weak var releaseDateRec: UIView!
    @IBOutlet weak var promotionLabelRec: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        promotionLabelRec.backgroundColor = .black
        productImg.clipsToBounds = true
        productImg.layer.cornerRadius = 20
        releaseDateRec.layer.cornerRadius = 20
        let cornerRadius: CGFloat = 10.0
        let maskPath = UIBezierPath(roundedRect: promotionLabelRec.bounds, byRoundingCorners: [.topRight, .bottomRight], cornerRadii: CGSize(width: cornerRadius, height: cornerRadius))
        let maskLayer = CAShapeLayer()
        maskLayer.path = maskPath.cgPath
        promotionLabelRec.layer.mask = maskLayer
    }
    
    func setUp(with product: Product){
        productImg.image = product.image
        name.text = product.name
        price.text = product.price
        promotionLabel.text = product.promotionLabel
        realeaseDate.text = product.dateRelease
        productDesc.text = product.productDesc
    }

}
