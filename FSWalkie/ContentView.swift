//
//  ContentView.swift
//  FSWalkie
//
//  Created by Rayen Kamta on 10/21/21.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Propertiers
    @State private var username = ""
    @State private var password = ""
      
    // MARK: - View
    var body: some View {
      VStack() {
        Text("FS Walkie")
              .font(.largeTitle).foregroundColor(Color.white)
              .padding([.top, .bottom], 40)
        Image("fluent")
              .resizable()
              .frame(width: 250, height: 250)
              .clipShape(Circle())
              .overlay(Circle().stroke(Color.white, lineWidth: 4))
              .shadow(radius: 10)
              .padding(.bottom, 50)
          VStack(alignment: .leading, spacing: 15) {
        TextField("username", text: self.$username)
                  .padding()
                 .background(Color.themeTextField)
                .cornerRadius(20.0)
                .shadow(radius: 10.0, x: 20, y: 10)
                .padding(20)
                 
          }
          Spacer()
          Button(action: {}) {
            Text("Sign In")
              .font(.headline)
              .foregroundColor(.white)
              .padding()
              .frame(width: 300, height: 50)
              .background(Color.green)
              .cornerRadius(25.0)
          }
      }
      .background(
        LinearGradient(gradient: Gradient(colors: [.green, .blue]), startPoint: .top, endPoint: .bottom)
          .edgesIgnoringSafeArea(.all))
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



extension Color {
    static var themeTextField: Color {
        return Color(red: 250.0/255.0, green: 250.0/255.0, blue: 250.0/255.0, opacity: 1.0)
    }
}
