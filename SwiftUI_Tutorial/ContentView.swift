//
//  ContentView.swift
//  SwiftUI_Tutorial
//
//  Created by vash jung on 2020/05/10.
//  Copyright © 2020 CMJunghoon. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack(alignment: .leading, spacing: 12) {
      HStack(alignment: .lastTextBaseline, spacing: 20) {
        Text("안녕하세요.")
          .font(.largeTitle)
        Text("This is a Book with ABCD")
          .font(.largeTitle)
        Text("This ia a car")
          .font(.largeTitle)
      }
      
      VStack(alignment: .leading) {
        Rectangle()
          .foregroundColor(.blue)
          .frame(width: 120, height: 20)
        Rectangle()
          .foregroundColor(.yellow)
          .alignmentGuide(.leading, computeValue: { (viewDim) -> CGFloat in
            return viewDim.width + 20
          })
          .frame(width: 200, height: 20)
        Rectangle()
          .foregroundColor(.red)
          .frame(width: 180, height: 20)
      }
    }
    
    
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
