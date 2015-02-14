//
//  CollectionViewCell.swift
//  ChiracBoard
//
//  Created by Nicolas Besnard on 14/02/2015.
//  Copyright (c) 2015 Nicolas Besnard. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell
{
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelView: UILabel!
    @IBOutlet weak var blurView: UIView!
    var isBlurred = false
    
    func blur () {
//        if (!isBlurred) {
            if ((imageView.subviews.last?.isKindOfClass(UIVisualEffectView)) != nil) {
                imageView.subviews.last?.removeFromSuperview()
            }
            var visualEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .Light)) as UIVisualEffectView
            visualEffectView.frame = CGRect(x: 0, y: 0, width: 250, height: 250)
            visualEffectView.alpha = 0.6
            imageView.addSubview(visualEffectView)
//            isBlurred = true
//        }
    }
}

