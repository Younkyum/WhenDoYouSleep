//
//  UIView-extenstion.swift
//  WhenDoYouSleep
//
//  Created by Jin younkyum on 2022/04/23.
//
import UIKit

extension UIView {
    @IBInspectable var conerRadius: CGFloat { // 모서리 둥글게
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
}


extension UIColor {

    convenience init(red: Int, green: Int, blue: Int, a: Int = 0xFF) {

        self.init(

            red: CGFloat(red) / 255.0,

            green: CGFloat(green) / 255.0,

            blue: CGFloat(blue) / 255.0,

            alpha: CGFloat(a) / 255.0

        )

    }

 

    convenience init(rgb: Int) {

           self.init(

               red: (rgb >> 16) & 0xFF,

               green: (rgb >> 8) & 0xFF,

               blue: rgb & 0xFF

           )

       }

    

    // let's suppose alpha is the first component (ARGB)

    convenience init(argb: Int) {

        self.init(

            red: (argb >> 16) & 0xFF,

            green: (argb >> 8) & 0xFF,

            blue: argb & 0xFF,

            a: (argb >> 24) & 0xFF

        )

    }

}

