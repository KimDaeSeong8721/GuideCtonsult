//
//  Color+Extension.swift
//  GuideConsult
//
//  Created by Daeseong on 2023/09/12.
//

import Foundation
import SwiftUI


extension Color {
    static let point = Color(hex: "2CE98E")
    static let backgroundGray = Color(hex: "F0F0F0")

}


extension Color {
  init(hex: String) {
    let scanner = Scanner(string: hex)
    _ = scanner.scanString("#")
    
    var rgb: UInt64 = 0
    scanner.scanHexInt64(&rgb)
    
    let r = Double((rgb >> 16) & 0xFF) / 255.0
    let g = Double((rgb >>  8) & 0xFF) / 255.0
    let b = Double((rgb >>  0) & 0xFF) / 255.0
    self.init(red: r, green: g, blue: b)
  }
}
