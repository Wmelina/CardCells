//
//  CollectionViewCell.swift
//  colView
//
//  Created by Alexander on 04/03/2019.
//  Copyright © 2019 Alexander. All rights reserved.
//

import UIKit
import SnapKit

class CardHistoryViewCell: UITableViewCell {
    
    var color: Color = Color(rawValue: 1)! {
        didSet {
            moneyLabel.textColor = setupColor(color: color)
        }
    }
    
    var mainStackView: UIStackView!
    var leftStackView: UIStackView!
    var dateLabel: UILabel!
    var cardNumberLabel: UILabel!
    var commentLabel: UILabel!
    var moneyLabel: UILabel!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureViews()
        configureConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureViews() {
        mainStackView = UIStackView()
        mainStackView.axis = .horizontal
        mainStackView.alignment = .center
        mainStackView.distribution = .fill
        
        leftStackView = UIStackView()
        leftStackView.axis = .vertical
        leftStackView.alignment = .leading
        leftStackView.distribution = .fill
        leftStackView.spacing = 7
        
        dateLabel = UILabel()
        dateLabel.font = UIFont.boldSystemFont(ofSize: 14)
        
        cardNumberLabel = UILabel()
        cardNumberLabel.textColor = UIColor(red:0.62, green:0.62, blue:0.62, alpha:1)
        cardNumberLabel.font = UIFont.systemFont(ofSize: 14)
        
        commentLabel = UILabel()
        commentLabel.font = UIFont.systemFont(ofSize: 14)
        commentLabel.numberOfLines = 0
        
        moneyLabel = UILabel()
        moneyLabel.font = UIFont.boldSystemFont(ofSize: 16)
        moneyLabel.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 1000), for: .horizontal)
        moneyLabel.setContentHuggingPriority(UILayoutPriority(rawValue: 1000), for: .horizontal)
        
        contentView.addSubview(mainStackView)
        mainStackView.addArrangedSubview(leftStackView)
        leftStackView.addArrangedSubview(dateLabel)
        leftStackView.addArrangedSubview(cardNumberLabel)
        leftStackView.addArrangedSubview(commentLabel)
        mainStackView.addArrangedSubview(moneyLabel)
    }
    
    func configureConstraints() {
        mainStackView.snp.makeConstraints { (make) in
            make.top.equalTo(10)
            make.bottom.equalTo(-10)
            make.left.equalTo(16)
            make.right.equalTo(-16)
        }
    }
    
    
    
    
    
    func setupColor(color: Color) -> UIColor {
        if color.rawValue == 0 {
            return UIColor(red:0.31, green:0.69, blue:0.25, alpha:1)
        }
        if color.rawValue == 1 {
            return UIColor.black
        }
        return UIColor.black
    }
    
    enum Color: Int {
        case Green = 0,
        Default
    }
}
