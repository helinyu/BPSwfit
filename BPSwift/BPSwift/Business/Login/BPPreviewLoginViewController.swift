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

}

class BPPreviewService {
    
    var curWindow: UIWindow =  UIWindow()
    var rootVC = BPPreviewLoginViewController()
    var bgImgView = UIImageView()
    var logoImgView = UIImageView()
    var loganL = UILabel()
    var loginBtn = UIButton()
    var registerBtn = UIButton()
    var leftLineL = UILabel()
    var rightLineL = UILabel()

    init() {
        baseVCInit()
    }
    
    func baseVCInit() {
        rootVC.view.frame = UIScreen.main.bounds
        curWindow.rootViewController = rootVC
        rootVC.view.backgroundColor = UIColor.red
        
        rootVC.view.addSubviews(views: [bgImgView,logoImgView, loganL, loginBtn, registerBtn, leftLineL, rightLineL])
        self.makeConstraints()
    }
    
    func makeConstraints() {
        bgImgView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
        
        logoImgView.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(90.0)
            make.height.width.equalTo(60.0)
            make.centerX.equalToSuperview()
        }
        
        loganL.snp.makeConstraints { (make) in
            make.top.equalTo(logoImgView.snp_bottomMargin).offset(10.0)
            make.centerX.equalToSuperview()
        }
        loganL.text = "标语"
        
        loginBtn.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.height.equalTo(50.0)
            make.width.equalTo(100.0)
        }
        loginBtn.setTitle("登录", for: .normal)
        loginBtn.setTitleColor(UIColor.red, for: .normal)
        
        registerBtn.snp.makeConstraints { (make) in
            make.top.equalTo(loginBtn.snp_bottomMargin).offset(10.0)
            make.centerX.equalToSuperview()
            make.height.equalTo(50.0)
            make.width.equalTo(100.0)
        }
        registerBtn.backgroundColor = UIColor.gray
        
        leftLineL.snp.makeConstraints { (make) in
            make.height.equalTo(1.0)
            make.right.equalTo(registerBtn.snp_leftMargin).offset(-10.0)
            make.left.equalToSuperview().offset(10.0)
            make.centerY.equalTo(registerBtn)
        }
        leftLineL.backgroundColor = UIColor.gray
        
        rightLineL.snp.makeConstraints { (make) in
            make.left.equalTo(registerBtn.snp_rightMargin).offset(10.0)
            make.right.equalToSuperview().offset(-10.0)
            make.centerY.equalTo(registerBtn )
        }
        rightLineL.backgroundColor = UIColor.gray

    }
    
    func showLoginPreview() {
        print("show login preview")
    }

    deinit {
        print("de init")
    }
    
}
