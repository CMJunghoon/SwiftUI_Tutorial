//
//  CarContentView.swift
//  SwiftUI_Tutorial
//
//  Created by vash jung on 2020/05/11.
//  Copyright © 2020 CMJunghoon. All rights reserved.
//

import SwiftUI

struct CarContentView: View {
  @ObservedObject var carStore: CarStore = CarStore(cars: carData)
  var body: some View {
    NavigationView {
      List {
        ForEach (carStore.cars) { car in
          ListCell(car: car)
        }
      }
    }
  }
}

struct CarContentView_Previews: PreviewProvider {
  static var previews: some View {
    CarContentView()
  }
}

struct ListCell: View {
  var car: Car
  
  var body: some View {
    NavigationLink(destination: CarDetail(selectedCar: car)) {
      
      HStack {
        Image(car.imageName)
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(width: 100, height: 60)
        Text(car.name)
      }
    }
    
  }
}
