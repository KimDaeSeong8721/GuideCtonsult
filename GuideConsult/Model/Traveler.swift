//
//  Traveler.swift
//  GuideConsult
//
//  Created by Daeseong on 2023/09/30.
//

import Foundation


struct Traveler {
    let id: String
    var birthYear: Int
    var sex: String
    var country: String
    var school: String?
    var imageURL: String
    var isGuide: Bool = false
    var guideId: String?
    var content: String?
}
