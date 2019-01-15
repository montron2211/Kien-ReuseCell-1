//
//  Subtitle.swift
//  Kien ReuseCell 1
//
//  Created by duycuong on 11/21/18.
//  Copyright © 2018 duycuong. All rights reserved.
//

import UIKit

class Subtitle: UITableViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
  
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    // reset lai cell truoc khi su dung
    override func prepareForReuse() {
        textLabel?.text = ""
        detailTextLabel?.text = ""
        backgroundColor = UIColor.blue
    }
    
}

