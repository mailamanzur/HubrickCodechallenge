//
//  CustomCell.swift
//  hubrick-Codechallenge
//
//  Created by Maila  Manzur on 28/08/2017.
//  Copyright © 2017 Maila  Manzur. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var descriptionTxtLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var titleImageView: UIImageView!
    
    @IBOutlet weak var detailTitleLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var likes: UILabel!
    @IBOutlet weak var comment: UILabel!
    @IBOutlet weak var share: UILabel!
    
    @IBOutlet weak var shareImageView: UIImageView!
    @IBOutlet weak var likeImageView: UIImageView!
  
    @IBOutlet weak var commentImageView: UIImageView!
    func setup(feed :Feed) {
        
        if feed.typefeed == "DELETE" {
            
            titleLabel.alpha = 0.3
            detailTitleLabel.alpha = 0.3
            descriptionLabel.alpha = 0.3
            descriptionTxtLabel.alpha = 0.3
            mainImageView.alpha = 0.3
            titleImageView.alpha = 0.1
            shareImageView.alpha = 0.3
            likeImageView.alpha = 0.3
            commentImageView.alpha = 0.3
            likes.alpha = 0.3
            comment.alpha = 0.3
            share.alpha = 0.3
          
    }
            
        titleLabel.text = feed.author?.displayname
        detailTitleLabel.text = feed.author?.name
        descriptionLabel.text = feed.payload?.plaintitle
        descriptionTxtLabel.text = feed.payload?.contenttitle
        
        
   }
}
