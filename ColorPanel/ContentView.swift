//
//  ContentView.swift
//  ColorPanel
//
//  Created by John Doe on 12/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sliderValueRed = Double.random(in: 0...255)
    @State private var sliderValueGreen = Double.random(in: 0...255)
    @State private var sliderValueBlue = Double.random(in: 0...255)
    
    var body: some View {
        
        ZStack{
            Color(.black)
                .ignoresSafeArea()
            VStack(spacing: 40) {
                
                Color(red: sliderValueRed / 255, green: sliderValueGreen / 255 , blue: sliderValueBlue / 255 )
                .frame(width: 400, height: 150)
                .cornerRadius(26)
                .overlay(
                    RoundedRectangle(cornerRadius: 26)
                        .stroke(.white, lineWidth: 8))
                .padding(.bottom, 40)
                
            ColorSliderView(value: $sliderValueRed, textColor: .red).tint(.red)
            ColorSliderView(value: $sliderValueGreen, textColor: .green).tint(.green)
            ColorSliderView(value: $sliderValueBlue, textColor: .blue).tint(.blue)
                
                Spacer()
            }
            .padding()
        }
        
    
        
    }
}
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

