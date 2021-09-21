//
//  FrameworkGridView.swift
//  Sample-Apple-Frameworks
//
//  Created by Gokul Kattamanchi on 9/16/21.
//

import SwiftUI

struct FrameworkGridView: View {
  @StateObject var viewModel = FrameworkGridViewModel()
  
  let columns: [GridItem] = [GridItem(.flexible()),
                             GridItem(.flexible()),
                             GridItem(.flexible())]
  
  var body: some View {
    NavigationView {
      List {
        ForEach(MockData.frameworks) { framework in
          NavigationLink(destination: FrameworkDetailView(framework: framework,
                                                          isShowingDetailView: $viewModel.isShowingDetailView)) {
            FrameworkTitleView(framework: framework)
          }
        }
      }
      .navigationTitle("🍎 Frameworks")
    }
    .accentColor(Color(.label))
  }
}

struct FrameworkGridView_Previews: PreviewProvider {
  static var previews: some View {
    FrameworkGridView()
      .preferredColorScheme(.dark)
  }
}
