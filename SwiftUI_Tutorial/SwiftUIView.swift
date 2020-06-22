//
//  SwiftUIView.swift
//  SwiftUI_Tutorial
//
//  Created by 최정훈 on 2020/06/22.
//  Copyright © 2020 CMJunghoon. All rights reserved.
//

import SwiftUI

struct SwiftUIView: View {
  var body: some View {
    ZStack {
      VStack {
        Circle()
          .frame(width: 150, height: 150)
          .offset(x: 180, y: -240)
        Circle()
          .frame(width: 150, height: 150)
          .offset(x: -180, y: -200)
      }
      .foregroundColor(.secondary)
      
      
      GeometryReader { gr in
        VStack {
          Spacer()
          RoundedRectangle(cornerRadius: 40)
            .fill(Color.secondary)
            .frame(height: gr.size.height * 0.7)
            .offset(y: 40)
        }
      }
      
      VStack(spacing: 16.0) {
        Circle()
          .fill(Color.secondary)
        
        Text("Landing 1")
          .font(.largeTitle)
          .fontWeight(.bold)
        
        Capsule()
//          .fill(Color.secondary)
          .frame(width: 200, height: 50)
        
        HStack(spacing: 16.0) {
          RoundedRectangle(cornerRadius: 15)
            .fill(Color.secondary)
          RoundedRectangle(cornerRadius: 15)
            .fill(Color.secondary)
        }
        HStack(spacing: 16.0) {
          RoundedRectangle(cornerRadius: 15)
            .fill(Color.secondary)
          RoundedRectangle(cornerRadius: 15)
            .fill(Color.secondary)
        }
        HStack(spacing: 16.0) {
          RoundedRectangle(cornerRadius: 15)
            .fill(Color.secondary)
          RoundedRectangle(cornerRadius: 15)
            .fill(Color.secondary)
        }
      }
      .padding(.all)
      
      
    }
  }
}

struct SwiftUIView_Previews: PreviewProvider {
  static var previews: some View {
    SwiftUIView()
  }
}
