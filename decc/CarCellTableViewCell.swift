//
//  CarCellTableViewCell.swift
//  decc
//
//  Created by zhao on 2019/9/30.
//  Copyright © 2019 zhao. All rights reserved.
//

import UIKit

class CarCellTableViewCell: UITableViewCell {

    @IBOutlet weak var myimg: UIImageView!
    
    @IBOutlet weak var mylabe: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        myimg.layer.borderWidth = 1
        myimg.layer.masksToBounds = true
        
        myimg.layer.cornerRadius = 30
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
