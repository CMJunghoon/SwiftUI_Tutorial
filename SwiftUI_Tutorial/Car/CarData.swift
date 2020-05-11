//
//  CarData.swift
//  SwiftUI_Tutorial
//
//  Created by vash jung on 2020/05/11.
//  Copyright © 2020 CMJunghoon. All rights reserved.
//

import UIKit
import SwiftUI

var carData: [Car] = loadJson("carData.json")

func loadJson<T: Decodable>(_ fileName: String) -> T {
  var data: Data = Data()
  guard let file = Bundle.main.url(forResource: fileName, withExtension: nil) else { fatalError("faterError") }
  
  do {
    data = try Data(contentsOf: file)
  } catch {
    fatalError("faterError")
  }
  
  do {
    return try JSONDecoder().decode(T.self, from: data)
  } catch {
    fatalError("faterError")
  }
}
