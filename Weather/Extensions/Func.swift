//
//  Func.swift
//  Weather
//
//  Created by Roman on 21.04.2023.
//

import UIKit

enum Extensions {
    
    enum Font {
        static func NSK(with size: CGFloat) -> UIFont {
            UIFont(name: "Noto Sans Kannada", size: size) ?? UIFont()
        }
        
        static func NSK_B(with size: CGFloat) -> UIFont {
            UIFont(name: "Noto Sans Kannada Bold", size: size) ?? UIFont()
        }
        
        static func NSK_SB(with size: CGFloat) -> UIFont {
            UIFont(name: "Noto Sans Kannada Semibold", size: size) ?? UIFont()
        }
    }
}
