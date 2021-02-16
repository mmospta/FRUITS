//
//  SettinglabelView.swift
//  Fructus
//
//  Created by Phonthep Aungkanukulwit on 17/2/2564 BE.
//

import SwiftUI

struct SettinglabelView: View {
  
  // MARK: - PROPERTIES
  
  var labelText: String
  var labelImage: String
  
  // MARK: - BODY
  var body: some View {
    HStack {
      Text(labelText.uppercased()).fontWeight(.bold)
      Spacer()
      Image(systemName: labelImage)
    }
  }
}

// MARK: - PREVIEW

struct SettinglabelView_Previews: PreviewProvider {
  static var previews: some View {
    SettinglabelView(labelText: "Fructus", labelImage: "infi.circle")
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
