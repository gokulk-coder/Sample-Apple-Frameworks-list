//
//  DismissButton.swift
//  Sample-Apple-Frameworks
//
//  Created by Gokul Kattamanchi on 9/20/21.
//

import SwiftUI

struct DismissButton: View {
  @Binding var isShowingDetailView: Bool
  
  var body: some View {
    HStack {
      Spacer()
      
      Button{
        isShowingDetailView = false
      } label: {
        Image(systemName: "xmark")
          .foregroundColor(Color(.label))
          .imageScale(.large)
          .frame(width: 44, height: 44)
      }
    }
    .padding()
  }
}

struct DismissButton_Previews: PreviewProvider {
  static var previews: some View {
    DismissButton(isShowingDetailView: .constant(false))
  }
}
