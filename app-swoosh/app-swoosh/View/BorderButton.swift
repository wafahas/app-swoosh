//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Wafaa Abu Dawod on 12/18/18.
//  Copyright © 2018 Wafaa Abu Dawod. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2
        layer.borderColor=UIColor.white.cgColor
        
    }

}
