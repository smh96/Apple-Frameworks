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
        Framework(title: "Maps", description: "Apple Maps is the best way to navigate and explore the world. MapKit lets you bring the world’s most detailed city experiences from Apple Maps to your apps and websites, all with a focus on privacy. And you can use the new Maps Server API to create more functional experiences across platforms.", iconLink: URL("https://developer.apple.com/assets/elements/icons/maps/maps-96x96_2x.png"), frameworkUrl: URL("https://developer.apple.com/maps/")),
        Framework(title: "In-app purchase", description: "Use new APIs and the latest enhancements to create even better in-app purchase experiences. You can now sync in-app purchase products from App Store Connect into Xcode, control when StoreKit message sheets appear in your app, present offer code redemption sheets within your app, and much more. Take advantage of new testing features, like the ability to request test notifications and test additional in-app purchase scenarios in the sandbox environment and Xcode, so you can be sure to provide great experiences for your users.", iconLink: URL("https://developer.apple.com/assets/elements/icons/storekit/storekit-96x96_2x.png"), frameworkUrl: URL("https://developer.apple.com/app-store/whats-new/")),
        Framework(title: "Metal 3", description: "Metal powers hardware-accelerated graphics on Apple platforms by providing a low-overhead API, rich shading language, tight integration between graphics and compute, and an unparalleled suite of GPU profiling and debugging tools. Metal 3 introduces powerful features that help your games and pro apps tap into the full potential of Apple silicon. Now you can render high-resolution graphics in less time, load resources faster, train machine learning networks with the GPU, and more.", iconLink: URL("https://developer.apple.com/assets/elements/icons/metal/metal-96x96_2x.png"), frameworkUrl: URL("https://developer.apple.com/metal/")),
        Framework(title: "WeatherKit", description: "Bring valuable weather information to your apps and services through a wide range of data that can help people stay up to date, safe, and prepared. It’s easy to use WeatherKit in your apps with a platform-specific Swift API, and on any other platform with a REST API.", iconLink: URL("https://developer.apple.com/assets/elements/icons/weatherkit/weatherkit-96x96_2x.png"), frameworkUrl: URL("https://developer.apple.com/weatherkit/"))
            ]
    
    
}
