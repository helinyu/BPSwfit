//
//  ViewController.swift
//  BPSwift
//
//  Created by Aka on 2019/1/19.
//  Copyright © 2019 Aka. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var nameL: UILabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.viewInit()
        self.makeConstraints()
        self.styleInit()
    }
    
    func viewInit() {
        self.view.addSubview(nameL)
    }
    
    func makeConstraints() {
        nameL.snp.makeConstraints { (make) in
            make.center.equalTo(self.view)
            make.height.equalTo(50.0)
            make.left.equalToSuperview().offset(30.0)
            make.right.equalToSuperview().offset(-30.0)
        }
        
    }
    
    func styleInit() {
        nameL.backgroundColor = UIColor.blue
    }
    

    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
    
    }

}

