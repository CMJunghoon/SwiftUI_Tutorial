//
//  ListNavigation.swift
//  SwiftUI_Tutorial
//
//  Created by vash jung on 2020/05/10.
//  Copyright © 2020 CMJunghoon. All rights reserved.
//

import SwiftUI

struct ToDoItem: Identifiable {
  var id = UUID()
  var task: String
  var imageName: String
}

var listData: [ToDoItem] = [
  ToDoItem(task: "Wash My Car", imageName: "trash.circle.fill"),
  ToDoItem(task: "Wash My Car", imageName: "trash.circle.fill"),
  ToDoItem(task: "Wash My Car", imageName: "trash.circle.fill"),
  ToDoItem(task: "Wash My Car", imageName: "trash.circle.fill"),
  ToDoItem(task: "Wash My Car", imageName: "trash.circle.fill"),
]


struct ListNavigation: View {
    var body: some View {
      List(listData) { data in
        HStack {
          Image(systemName: data.imageName)
          Text(data.task)
        }
      }
    }
}

struct ListNavigation_Previews: PreviewProvider {
    static var previews: some View {
        ListNavigation()
    }
}
