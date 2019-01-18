//
//  ViewController.swift
//  BPSwift
//
//  Created by Aka on 2019/1/19.
//  Copyright © 2019 Aka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let flag: Bool = BP_SYSTEM_VERSION_EQUAL_TO(v: 12.1)
        let version: String = UIDevice.current.systemVersion as String
        print("system version :",flag, version, kcurrentSysVersionF, kcurrentSysVersion)
        
//        let service = BPPreviewService()
//        service.showLoginPreview()

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

