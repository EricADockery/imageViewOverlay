//
//  GradientView.swift
//  ImageViewWithGradient
//
//  Created by Eric Dockery on 6/16/18.
//  Copyright © 2018 Eric Dockery. All rights reserved.
//

import UIKit

class GradientView: UIView {

    override func awakeFromNib() {
        super.awakeFromNib()

        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = CGRect(x: 0, y: 0, width: frame.width, height: frame.height)
        gradientLayer.colors = [UIColor.white.cgColor,UIColor.red.withAlphaComponent(0.5).cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        layer.addSublayer(gradientLayer)
    }
}
