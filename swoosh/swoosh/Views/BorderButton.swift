//
//  BorderButton.swift
//  swoosh
//
//  Created by Антон Грищенко on 16.03.2018.
//  Copyright © 2018 Антон Грищенко. All rights reserved.
//

import UIKit

class BorderButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }

}
