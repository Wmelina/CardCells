//
//  CardViewCell.swift
//  CardHistory
//
//  Created by Alexander on 13/03/2019.
//  Copyright © 2019 Alexander. All rights reserved.
//

import UIKit
import SnapKit

class CardViewCell: UITableViewCell {

    var mainView: UIView!
    var cardImageView: UIImageView!
    var labelStackView: UIStackView!
    var cardNumberLabel: UILabel!
    var dateLabel: UILabel!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureViews()
        configureConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureViews() {
        mainView = UIView()
        
        cardImageView = UIImageView()
        
        labelStackView = UIStackView()
        labelStackView.axis = .vertical
        labelStackView.alignment = .leading
        labelStackView.distribution = .fill
        labelStackView.spacing = 5
        
        cardNumberLabel = UILabel()
        cardNumberLabel.font = UIFont.systemFont(ofSize: 16)
        
        dateLabel = UILabel()
        dateLabel.textColor = UIColor(red:0.62, green:0.62, blue:0.62, alpha:1)
        dateLabel.font = UIFont.systemFont(ofSize: 14)
        dateLabel.numberOfLines = 0
        
        contentView.addSubview(mainView)
        mainView.addSubview(cardImageView)
        mainView.addSubview(labelStackView)
        labelStackView.addArrangedSubview(cardNumberLabel)
        labelStackView.addArrangedSubview(dateLabel)
    }
    func configureConstraints() {
        mainView.snp.makeConstraints { (make) in
            make.top.equalTo(10)
            make.bottom.equalTo(-10)
            make.left.equalTo(16)
            make.right.equalTo(-16)
        }
        
        cardImageView.snp.makeConstraints { (make) in
            make.left.equalTo(0)
            make.centerY.equalTo(mainView.snp.centerY)
        }
        
        labelStackView.snp.makeConstraints { (make) in
            make.left.equalTo(cardImageView.snp.right).offset(15)
            make.top.bottom.right.equalTo(0)
        }
    }

}
