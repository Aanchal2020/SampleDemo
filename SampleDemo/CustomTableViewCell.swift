//
//  CustomTableViewCell.swift
//  SampleDemo
//
//  Created by Atlas on 19/07/20.
//  Copyright © 2020 Atlas. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    var photoView = UIImageView()
    var titleLabel = UILabel()
    var descLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style,reuseIdentifier:reuseIdentifier)
        
            //add to view
            addSubview(photoView)
            addSubview(titleLabel)
            addSubview(descLabel)
        
            //call methods
            configureImageView()
            configureTitleLabel()
            configureDescLabel()
            setImageConstraints()
            setTitleLabelConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init (coder:) has not been implmemted")
    }
    
    // set model class  : (24: 54)
    
//    func set (detail: Detail) {
//        photoView.image = detail.image
//        titleLabel.text = detail.title
//    }
    func configureImageView(){
        photoView.layer.cornerRadius = 10
        photoView.clipsToBounds  = true
        
    }
    
    func configureTitleLabel()  {
        titleLabel.numberOfLines = 0
        titleLabel.adjustsFontSizeToFitWidth = true
    }
    
    func configureDescLabel() {
        descLabel.numberOfLines = 0
        descLabel.adjustsFontSizeToFitWidth = true
    }
    
    func setImageConstraints(){
        photoView.translatesAutoresizingMaskIntoConstraints = false
        photoView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        photoView.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 12).isActive = true
        photoView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        photoView.widthAnchor.constraint(equalTo: photoView.heightAnchor, multiplier: 16/9).isActive = true
    }
    
    func setTitleLabelConstraints() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: photoView.trailingAnchor, constant: 20).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 80).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
    }
}
