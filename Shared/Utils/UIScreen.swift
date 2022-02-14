//
//  UIScreen.swift
//  FoodLog
//
//  Created by Kristóf Kékesi on 2022. 02. 14..
//

import UIKit

// https://stackoverflow.com/questions/57727107/how-to-get-the-iphones-screen-width-in-swiftui

extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}
