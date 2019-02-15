//
//  Constants.swift
//  BPSwift
//
//  Created by Aka on 2019/1/19.
//  Copyright © 2019 Aka. All rights reserved.
//

import Foundation
import UIKit

let kCurrentDevice: UIDevice = UIDevice.current
let kcurrentSysVersionS: NSString = kCurrentDevice.systemVersion as NSString
let kcurrentSysVersionF: Float = kcurrentSysVersionS.floatValue

// 这里应该使用函数来进行定义
func BP_SYSTEM_VERSION_EQUAL_TO(v: Float) -> Bool {
    return (kcurrentSysVersionF == v)
}

func BP_SYSTEM_VERSION_GREATER_THAN(v: Float) -> Bool {
    return (kcurrentSysVersionF > v)
}

func BP_SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v: Float) -> Bool {
    return (kcurrentSysVersionF >= v)
}

func BP_SYSTEM_VERSION_LESS_THAN(v: Float) -> Bool {
    return (kcurrentSysVersionF < v)
}

func BP_SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v: Float) -> Bool {
    return (kcurrentSysVersionF <= v)
}

func BEFORE_IOS9() -> Bool {
    return BP_SYSTEM_VERSION_LESS_THAN(v: 9.0)
}

func AFTER_IOS9() -> Bool {
    return BP_SYSTEM_VERSION_GREATER_THAN(v: 9.0)
}

let kScreenBounds: CGRect = UIScreen.main.bounds
let kScreenWidth: CGFloat = kScreenBounds.width
let kScreenHeight: CGFloat = kScreenBounds.height
let kScreenSize : CGSize = kScreenBounds.size // 屏幕大小
let kScreenCenter : CGPoint = CGPoint.init(x: kScreenWidth * 0.5, y: kScreenHeight * 0.5)


func IS_SCREEN_SIZE_1() -> Bool {
    return (kScreenHeight == 480.0)
}

func IS_SCREEN_SIZE_2() -> Bool {
    return (kScreenHeight == 568.0)
}

func IS_SCREEN_SIZE_3() -> Bool {
    return (kScreenHeight == 667.0)
}
func IS_SCREEN_SIZE_4() -> Bool {
    return (kScreenHeight == 736.0)
}
func IS_SCREEN_SIZE_5() -> Bool {
    return (kScreenHeight == 812.0)
}

func DEVICE_WIDTH_SCALE_FOR_FONT() -> CGFloat {
    return ((kScreenWidth/375.0) > 1.0 ? 1.0 : (kScreenWidth/375.0))
}

func DEVICE_WIDTH_OF_FOR_FONT(x : CGFloat) -> CGFloat {
    return (round(x) * DEVICE_WIDTH_SCALE_FOR_FONT())
}

func DEVICE_WIDTH_SCALE() -> CGFloat {
    return kScreenWidth/375.0;
}

func DEVICE_HEIGHT_SCALE() -> CGFloat {
    return kScreenHeight/667.0;
}

func DEVICE_WIDTH_OF(x: CGFloat) -> CGFloat { // 四舍五入
    return (round((x) * DEVICE_WIDTH_SCALE()))
}

func DWF(x: CGFloat) -> CGFloat {
    return DEVICE_WIDTH_OF(x: x)
} // 四舍五入

func DEVICE_WIDTH_BY(x: CGFloat) -> CGFloat { // 大约
    return (x * DEVICE_WIDTH_SCALE())
}

func DHB(x: CGFloat) -> CGFloat {
    return DEVICE_WIDTH_BY(x: x)
} // 大约

func DEVICE_WIDTH_CEILF(x: CGFloat) -> CGFloat { // 向上去整
    return (CGFloat(ceilf(Float((x) * DEVICE_WIDTH_SCALE()))))
}

func DWCF(x: CGFloat) -> CGFloat {
    return DEVICE_WIDTH_CEILF(x: x)
} //向上去整


func DEVICE_WIDTH_FLOORF(x: CGFloat) -> CGFloat { // 向下去整
    return (CGFloat(floorf(Float((x) * DEVICE_WIDTH_SCALE()))))
}

func DWFF(x: CGFloat) -> CGFloat {
    return DEVICE_WIDTH_FLOORF(x: x)
} // 向下去整
