//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Sander Haug on 06/03/2023.
//

import SwiftUI

struct FrameworkDetailView: View {
    @EnvironmentObject var vm: FrameworkViewModel
    
    let framework: Framework
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                AsyncImage(url: framework.iconLink) { image in
                    image
                        .resizable()
                        .scaledToFit()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 75, height: 75)
                
                Text(framework.title)
                    .font(.largeTitle.bold())
                
                Spacer()
                
            }
            .padding()
            
            Text(framework.description)
                .padding()
            
            Link(destination: framework.frameworkUrl, label: {
                HStack {
                    Image(systemName: "safari")
                        .foregroundColor(.white)
                        .symbolRenderingMode(.monochrome)
                    Text("Tap for more information")
                }
                .font(.title3)
                .foregroundColor(.white)
                .padding()
                .background(Color.accentColor)
                .cornerRadius(8)
            })
            
            .padding(50)
            
            Spacer()
            Spacer()
            Spacer()
            Spacer()
        }
        
        .preferredColorScheme(.dark)
    }
    
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: Framework.sampleFramework)
            .environmentObject(FrameworkViewModel())
    }
}
