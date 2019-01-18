//
//  BPPreviewLoginViewController.swift
//  BPSwift
//
//  Created by Aka on 2019/1/19.
//  Copyright © 2019 Aka. All rights reserved.
//

import UIKit

class BPPreviewLoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

class BPPreviewService {
    
    var curWindow: UIWindow
    var rootVC: BPPreviewLoginViewController
    var bgImgView: UIImageView
    var logoImgView: UIImageView
    var loganL: UILabel
    var loginBtn: UIButton
    var registerBtn: UIButton
    var leftLineL: UILabel
    var rightLineL: UILabel

    init() {
        curWindow = UIWindow()
        rootVC = BPPreviewLoginViewController()
        bgImgView = UIImageView()
        logoImgView = UIImageView()
        loganL = UILabel()
        loginBtn = UIButton()
        registerBtn = UIButton()
        leftLineL = UILabel()
        rightLineL = UILabel()
        baseVCInit()
    }
    
    func baseVCInit() {
        rootVC.view.frame = UIScreen.main.bounds
        curWindow.rootViewController = rootVC
        rootVC.view.backgroundColor = UIColor.red
    }
    
    func showLoginPreview() {
        
    }

    deinit {
        print("de init")
    }
    
}
