//
//  OnbordingView.swift
//  Fructus
//
//  Created by Phonthep Aungkanukulwit on 7/2/2564 BE.
//

import SwiftUI

struct OnbordingView: View {
  
  // MARK: - Properties
  
  var fruits: [Fruit] = fruitsData
  
  // MARK: - BODY
  
  var body: some View {
    TabView {
      ForEach(fruits[0...5]) { item in
        FruitCardView(fruit: item)
      } //: LOOP
    } //: TAB
    .tabViewStyle(PageTabViewStyle())
    .padding(.vertical, 20)
  }
}

struct OnbordingView_Previews: PreviewProvider {
  static var previews: some View {
    OnbordingView(fruits: fruitsData)
      .previewDevice("iPhone 11 Pro")
  }
}
