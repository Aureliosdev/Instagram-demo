//
//  TableViewCell.swift
//  instagram demo
//
//  Created by Aurelio Le Clarke on 07.04.2022.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var userImageView: UIImageView!
    @IBOutlet var posterImageView: UIImageView!
    @IBOutlet var usernameLabel: UILabel!
    @IBOutlet var likesLabel: UILabel!
    
    static let identifier = "TableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "TableViewCell", bundle: nil)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }
    func configure(with model: InstagramPost) {
        likesLabel.text = "\(model.numberOfLikes) Likes"
        usernameLabel.text = model.userName
        userImageView.image = UIImage(named: model.userImageName)
        posterImageView.image = UIImage(named: model.mainImageName)
        
    }
}
