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
        configureImageView()
        configureVideoTitleLabel()
        setImageViewConstraints()
        setVideoTitleConstraints()
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder) has not been implemented")
    }
    
    func set(video: Video){
        videoImage.image = video.image
        videoTitleLabel.text = video.title
       }
    
    func configureImageView(){
        videoImage.layer.cornerRadius = 10
        videoImage.clipsToBounds   = true
      
    }
    
    
    func configureVideoTitleLabel(){
        videoTitleLabel.numberOfLines = 0
        videoTitleLabel.adjustsFontSizeToFitWidth = true
    }
    
    func setImageViewConstraints(){
        videoImage.translatesAutoresizingMaskIntoConstraints = false
        videoImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        videoImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        videoImage.heightAnchor.constraint(equalToConstant: 80).isActive = true
        videoImage.widthAnchor.constraint(equalTo: videoImage.heightAnchor, multiplier: 16/9).isActive = true
    }
    
    func setVideoTitleConstraints(){
        videoTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        videoTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        videoTitleLabel.leadingAnchor.constraint(equalTo: videoImage.trailingAnchor, constant: 20).isActive = true
        videoTitleLabel.heightAnchor.constraint(equalToConstant: 80).isActive = true
        videoTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
        
    }

}
