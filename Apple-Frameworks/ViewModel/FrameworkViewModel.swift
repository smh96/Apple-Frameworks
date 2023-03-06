//
//  FrameworkViewModel.swift
//  Apple-Frameworks
//
//  Created by Sander Haug on 06/03/2023.
//

import Foundation

@MainActor class FrameworkViewModel: ObservableObject {
    
    // Init empty array
    @Published var frameworkList = [Framework]()
    
    //Init sheet
    @Published var frameworkSheet: Framework? = nil
    
    // Writing the getFrameworks func
    
    func getFrameworks() -> [Framework] {
        let frameworkData = frameworks
        
        return frameworkData
       
    }
    
    // Initting the class itself
    init() {
        self.frameworkList = getFrameworks()
    }
    
    let frameworks: [Framework] = [
        Framework(title: "SwiftUI", description: "SwiftUI helps you build great-looking apps across all Apple platforms with the power of Swift — and surprisingly little code. You can bring even better experiences to everyone, on any Apple device, using just one set of tools and APIs.", iconLink: URL("https://developer.apple.com/assets/elements/icons/swiftui/swiftui-96x96_2x.png"), frameworkUrl: URL("https://developer.apple.com/xcode/swiftui/")),
        Framework(title: "Maps", description: "Apple Maps is the best way to navigate and explore the world. MapKit lets you bring the world’s most detailed city experiences from Apple Maps to your apps and websites, all with a focus on privacy. And you can use the new Maps Server API to create more functional experiences across platforms.", iconLink: URL("https://developer.apple.com/assets/elements/icons/maps/maps-96x96_2x.png"), frameworkUrl: URL("https://developer.apple.com/maps/"))
            ]
    
    
}
