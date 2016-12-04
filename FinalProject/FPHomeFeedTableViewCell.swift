//
//  FPHomeFeedTableViewCell.swift
//  FinalProject
//
//  Created by Alvin on 11/26/16.
//  Copyright © 2016 The Austin Space. All rights reserved.
//

import UIKit

class FPHomeFeedTableViewCell: UITableViewCell {
    @IBOutlet weak var pictureImageView: UIImageView!


    @IBOutlet weak var userNameLabel: UILabel!

    @IBOutlet weak var blankButton: UIButton!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
