//
//  Constants.swift
//  BPSwift
//
//  Created by Aka on 2019/1/19.
//  Copyright © 2019 Aka. All rights reserved.
//

import Foundation
import UIKit

let kScreenBounds: CGRect = UIScreen.main.bounds
let kScreenWidth: CGFloat = kScreenBounds.width
let kScreenHeight: CGFloat = kScreenBounds.height

let kCurrentDevice: UIDevice = UIDevice.current
let kcurrentSysVersionS: NSString = kCurrentDevice.systemVersion as NSString
let kcurrentSysVersionF: Float = kcurrentSysVersionS.floatValue

// 这里应该使用函数来进行定义
func BP_SYSTEM_VERSION_EQUAL_TO(v: Float) -> Bool {
    return (kcurrentSysVersionF == v)
}
// 其他的类似这样去替换掉

//// version check

//#define DL_SYSTEM_VERSION_GREATER_THAN(v) [[[UIDevice currentDevice] systemVersion] floatValue] > v
//#define DL_SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v) [[[UIDevice currentDevice] systemVersion] floatValue] >= v
//#define DL_SYSTEM_VERSION_LESS_THAN(v) [[[UIDevice currentDevice] systemVersion] floatValue] < v
//#define DL_SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v) [[[UIDevice currentDevice] systemVersion] floatValue] <= v
//
//// 这里可以延展一些系统版本的判断
//#define BEFORE_IOS9 DL_SYSTEM_VERSION_LESS_THAN(9.f)
//
////device screen size mainly for the view setting.
//#define IS_SCREEN_SIZE_1 [UIScreen mainScreen].bounds.size.height == 480
//#define IS_SCREEN_SIZE_2 [UIScreen mainScreen].bounds.size.height == 568
//#define IS_SCREEN_SIZE_3 [UIScreen mainScreen].bounds.size.height == 667
//#define IS_SCREEN_SIZE_4 [UIScreen mainScreen].bounds.size.height == 736
//#define IS_SCREEN_SIZE_5 [UIScreen mainScreen].bounds.size.height == 812
//
//// setting the screen size 、scale 、 round size
//#define DEVICE_WIDTH_SCALE_FOR_FONT (([UIScreen mainScreen].bounds.size.width / 375.0) > 1 ? 1 : ([UIScreen mainScreen].bounds.size.width / 375.0))
//#define DEVICE_WIDTH_OF_FOR_FONT(x) round((x) * DEVICE_WIDTH_SCALE_FOR_FONT)
////scale
//#define DEVICE_WIDTH_SCALE ([UIScreen mainScreen].bounds.size.width / 375.0)
//#define DEVICE_HEIGHT_SCALE ([UIScreen mainScreen].bounds.size.height / 667.0)
////width
//#define DEVICE_WIDTH_OF(x) round((x) * DEVICE_WIDTH_SCALE) // 四舍五入
//#define DEVICE_WIDTH_BY(x) ((x) *DEVICE_WIDTH_SCALE) // 大约
//#define DEVICE_WIDTH_FLOORF(x) floorf((x) * DEVICE_WIDTH_SCALE) // 向下去整
//#define DEVICE_WIDTH_CEILF(x) ceilf((x) * DEVICE_WIDTH_SCALE) // 向上去整
//// height
//#define DEVICE_HEIGHT_OF(x) round((x) * DEVICE_HEIGHT_SCALE) // 四舍五入
//#define DEVICE_HEIGHT_BY(x) ((x) *DEVICE_HEIGHT_SCALE) // 大约
//#define DEVICE_HEIGHT_FLOORF(x) floorf((x) * DEVICE_HEIGHT_SCALE) // 向下去整
//#define DEVICE_HEIGHT_CEILF(x) ceilf((x) * DEVICE_HEIGHT_SCALE) // 向上去整
//
////底部为宽， 左右两边为高
//#define SCREEN_WIDTH_V0 [UIScreen mainScreen].bounds.size.width
//#define SCREEN_HEIGHT_V0 [UIScreen mainScreen].bounds.size.height
//// 旋转获取原来短边
//#define SCREEN_WIDTH_V1 MIN([UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)
//#define SCREEN_HEIGHT_V1 MAX([UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)
//
//#define SCREEN_BOUNDS CGRectMake(0,0,SCREEN_WIDTH_V1, SCREEN_HEIGHT_V1)  // 屏幕bounds
//#define SCREEN_SIZE CGSizeMake(SCREEN_WIDTH_V1, SCREEN_HEIGHT_V1) // 屏幕大小
//#define SCREEN_CENTER CGPointMake(SCREEN_WIDTH_V0 * 0.5, SCREEN_HEIGHT_V0 * 0.5) // 屏幕中心
//
//// rename the constant above
//#define DWF(x) DEVICE_WIDTH_OF(x)  // 四舍五入
//#define DWB(x) DEVICE_WIDTH_BY(x) // 大约
//#define DWFF(x) DEVICE_WIDTH_FLOORF(x) // 向下去整
//#define DWCF(x) DEVICE_WIDTH_CEILF(x) // 向上去整
//#define DHF(x) DEVICE_HEIGHT_OF(x) // 四舍五入
//#define DHB(x) DEVICE_HEIGHT_BY(x)  // 大约
//#define DHFF(x) DEVICE_HEIGHT_FLOORF(x) // 向下去整
//#define DHCF(x) DEVICE_HEIGHT_CEILF(x) // 向上去整



