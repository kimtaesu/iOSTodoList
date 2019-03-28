//
//  CheckBox.swift
//  TodoList
//
//  Created by tskim on 28/03/2019.
//  Copyright © 2019 hucet. All rights reserved.
//

import UIKit

class CheckBox: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setImage(Asset.checkmarkempty.image, for: .normal)
        self.setImage(Asset.checkmark.image, for: .selected)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
