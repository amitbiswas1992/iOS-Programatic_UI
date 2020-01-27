//
//  VideoCell.swift
//  programmaticui-customCell
//
//  Created by Amit Biswas on 1/27/20.
//  Copyright © 2020 Amit Biswas. All rights reserved.
//

import UIKit

class VideoCell: UITableViewCell {
    
    var videoImage = UIImageView()
    var videoTitleLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(videoImage)
        addSubview(videoTitleLabel)
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder) has not been implemented")
    }
    
    func configureImageView(){
        videoImage.layer.cornerRadius = 10
        videoImage.clipsToBounds   = true
    }
    
    
    func configureVideoTitleLabel(){
        videoTitleLabel.numberOfLines = 0
        videoTitleLabel.adjustsFontSizeToFitWidth = true
    }

}
