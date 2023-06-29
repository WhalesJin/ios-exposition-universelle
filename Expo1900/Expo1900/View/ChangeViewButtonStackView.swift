//
//  ChangeViewButtonStackView.swift
//  Expo1900
//
//  Created by Max, Whales on 2023/06/30.
//

import UIKit

class ChangeViewButtonStackView: UIStackView {
    let leftFlagImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: AssetNamespace.flag)
        
        return imageView
    }()
    
    let rightFlagImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: AssetNamespace.flag)
        
        return imageView
    }()
    
    let changeViewButton = {
        let button = UIButton()
        button.setTitle(LabelTextNameSpace.buttonTitle, for: .normal)
        button.setTitleColor(UIColor.systemBlue, for: .normal)
        button.titleLabel?.font = .preferredFont(forTextStyle: .subheadline)
        
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
    }
        
    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func configureUI() {
        self.axis = .horizontal
        self.spacing = 30
        self.addArrangedSubview(leftFlagImageView)
        self.addArrangedSubview(changeViewButton)
        self.addArrangedSubview(rightFlagImageView)

        changeViewButton.setContentCompressionResistancePriority(.init(999), for: .horizontal)
        
        NSLayoutConstraint.activate([
            leftFlagImageView
                .heightAnchor
                .constraint(equalTo: leftFlagImageView.widthAnchor, multiplier: 0.65),
            rightFlagImageView
                .heightAnchor
                .constraint(equalTo: rightFlagImageView.widthAnchor, multiplier: 0.65),
            rightFlagImageView
                .widthAnchor
                .constraint(equalTo: leftFlagImageView.widthAnchor)
        ])
    }
}