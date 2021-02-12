//
//  FruitModel.swift
//  Fructus
//
//  Created by Phonthep Aungkanukulwit on 12/2/2564 BE.
//

import SwiftUI

// MARK: - FRUITS DATA MODEL

struct Fruit: Identifiable {
  var id = UUID()
  var title: String
  var headline: String
  var image: String
  var gradientColors: [Color]
  var description: String
  var nutrition: [String]
}
