//
//  ColorSlideView.swift
//  ColorPanel
//
//  Created by John Doe on 12/09/2022.
//

import SwiftUI

struct ColorSliderView: View {

    @Binding var value: Double
    let textColor: Color

    var body: some View {
        HStack {
            Text(String(lround(value)))
                .foregroundColor(.white)
                .font(.title)
            Slider(value: $value, in: 0...255, step: 1)
            Text("255")
                .foregroundColor(.white)
                .font(.title)

        }
    }
}
