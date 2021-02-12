//
//  FructusApp.swift
//  Fructus
//
//  Created by Phonthep Aungkanukulwit on 7/2/2564 BE.
//

import SwiftUI

@main
struct FructusApp: App {
  @AppStorage("isOnboarding") var isOnboarding: Bool = true
  
  var body: some Scene {
    WindowGroup {
      if isOnboarding {
        OnbordingView()
      } else {
        ContentView()
      }
    }
  }
}
