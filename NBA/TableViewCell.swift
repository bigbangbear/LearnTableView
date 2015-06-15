//
//  TableViewCell.swift
//  NBA
//
//  Created by yuhuibin on 15/6/14.
//  Copyright (c) 2015年 yuhuibin. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    

    @IBOutlet weak var nameLable:UILabel!
    @IBOutlet weak var typeLable:UILabel!
    @IBOutlet weak var playerImageView:UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
