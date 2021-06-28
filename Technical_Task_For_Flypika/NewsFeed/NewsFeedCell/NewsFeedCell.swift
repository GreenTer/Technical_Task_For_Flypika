//
//  NewsFeedCell.swift
//  Technical_Task_For_Flypika
//
//  Created by Baravitski Aliaksandr on 28.06.21.
//

import Foundation
import UIKit

class NewsfeedCell: UITableViewCell {
    
    static let reuseId = "NewsFeedCell"
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var postLabel: UILabel!
    @IBOutlet weak var likesLabel: UIView!
    @IBOutlet weak var commentsLabel: UIView!
    @IBOutlet weak var sharesLabel: UIView!
    @IBOutlet weak var viewsLabel: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}
