//
//  Car.swift
//  SwiftUI_Tutorial
//
//  Created by vash jung on 2020/05/11.
//  Copyright © 2020 CMJunghoon. All rights reserved.
//

import SwiftUI

struct Car: Codable, Identifiable {
  var id: String
  var name: String
  var description: String
  var isHybrid: Bool
  var imageName: String
}
