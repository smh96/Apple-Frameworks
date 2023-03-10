//
//  Homeview.swift
//  Apple-Frameworks
//
//  Created by Sander Haug on 06/03/2023.
//

import SwiftUI

struct Homeview: View {
    @StateObject var vm = FrameworkViewModel()
    
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 140))
        ]
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                LazyVGrid(columns: adaptiveColumns, spacing: 20) {
                    ForEach(vm.frameworkList) { framework in
                        Button {
                            vm.frameworkSheet = framework
                        } label: {
                            VStack {
                                AsyncImage(url: framework.iconLink) { image in
                                    image
                                        .resizable()
                                        .scaledToFit()
                                } placeholder: {
                                    ProgressView()
                                }
                                .frame(width: 75, height: 75)
                                .padding()
                               
                                Text(framework.title)
                                    .font(.title.bold())
                                    .foregroundColor(.white)
                            }
                        }
                    }
                    .sheet(item: $vm.frameworkSheet, onDismiss: nil) { framework in
                        FrameworkDetailView(framework: framework)
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
        }
        .environmentObject(vm)
        .preferredColorScheme(.dark)
    }
}

struct Homeview_Previews: PreviewProvider {
    static var previews: some View {
        Homeview()
    }
}
