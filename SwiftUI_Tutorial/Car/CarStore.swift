//
//  CarStore.swift
//  SwiftUI_Tutorial
//
//  Created by vash jung on 2020/05/11.
//  Copyright © 2020 CMJunghoon. All rights reserved.
//

import SwiftUI
import Combine

class CarStore: ObservableObject {
  @Published var cars: [Car]
  
  init(cars: [Car] = []) {
    self.cars = cars
  }
}
