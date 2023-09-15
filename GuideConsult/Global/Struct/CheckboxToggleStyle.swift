//
//  File.swift
//  GuideConsult
//
//  Created by Daeseong on 2023/09/12.
//

import Foundation
import SwiftUI

struct CheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        // 1
        Button(action: {

            // 2
            configuration.isOn.toggle()

        }, label: {
            HStack {
                // 3
                Image(systemName: configuration.isOn ? "checkmark.square.fill" : "square")
                    .foregroundColor(configuration.isOn ? Color.point : Color.black.opacity(0.4))
                configuration.label
            }
        })
    }
}
