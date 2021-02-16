//
//  SettingView.swift
//  Fructus
//
//  Created by Phonthep Aungkanukulwit on 14/2/2564 BE.
//

import SwiftUI

struct SettingView: View {
  // MARK: - PROPERTIES
  
  @Environment(\.presentationMode) var presentationMode
  @AppStorage("isOnboarding") var isOnboarding: Bool = false
  
  // MARK: - BODY
  var body: some View {
    NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(spacing: 20) {
          
          // MARK: - SECTION 1
          GroupBox(
            label:
              SettinglabelView(labelText: "Fructus", labelImage: "info.circle")
          ) {
            Divider().padding(.vertical, 4)
            
            HStack(alignment: .center, spacing: 10) {
              Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .cornerRadius(9)
              
              Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                .font(.footnote)
            }
          }
          
          // MARK: - SECTION 2
          
          GroupBox(label: SettinglabelView(labelText: "Customization", labelImage: "paintbrush")
          ) {
            Divider().padding(.vertical, 4)
            
            Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again")
              .padding(.vertical, 4)
              .frame(minHeight: 60)
              .layoutPriority(1)
              .font(.footnote)
              .multilineTextAlignment(.leading)
            
            Toggle(isOn: $isOnboarding) {
              if isOnboarding {
                Text("Restarted".uppercased())
                  .fontWeight(.bold)
                  .foregroundColor(Color.green)
              } else {
                Text("Restart".uppercased())
                  .fontWeight(.bold)
                  .foregroundColor(Color.secondary)
              }
              
            }
            .padding()
            .background(
              Color(UIColor.tertiarySystemBackground)
                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
            )
          }
                    
          // MARK: - SECTION 3
          GroupBox(
            label: SettinglabelView(labelText: "Application", labelImage: "apps.iphone")
          ) {
            SettingsRowView(name: "Developer", content: "John / Jane")
            SettingsRowView(name: "Designer", content: "Robert Pertras")
            SettingsRowView(name: "Website", linkLabel: "SwiftUI MasterClass", linkDestination: "swiftuimasterclass.com")
            SettingsRowView(name: "Twitter", linkLabel: "Mos Phonthep", linkDestination: "www.google.com")
            SettingsRowView(name: "SwiftUI", content: "2.0")
            SettingsRowView(name: "Version", content: "1.1.1")
            
          }

          
        } //: VSTACK
        .navigationBarTitle(Text("Setting"), displayMode: .large)
        .navigationBarItems(trailing: Button(action: {
          presentationMode.wrappedValue.dismiss()
        }) {
          Image(systemName: "xmark")
        })
        .padding()
      } //: SCROLL
    } //: NAVIGATION
  }
}

// MARK: - PREVIEW

struct SettingView_Previews: PreviewProvider {
  static var previews: some View {
    SettingView()
      .preferredColorScheme(.light)
      .previewDevice("iPhone 11 Pro")
  }
}
