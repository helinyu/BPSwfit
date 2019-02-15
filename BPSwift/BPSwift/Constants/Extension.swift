//
//  Extension.swift
//  BPSwift
//
//  Created by Aka on 2019/1/19.
//  Copyright © 2019 Aka. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    open func addSubviews(views: Array<UIView>) {
        for sonView in views {
            self.addSubview(sonView)
        }
    }
    
    
}
