//
//  FrameworkModel.swift
//  Apple-Frameworks
//
//  Created by Sander Haug on 06/03/2023.
//

import Foundation
import SwiftUI

struct Framework: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let iconLink: URL
    let frameworkUrl: URL
    
    static var sampleFramework = Framework(title: "TestSwiftUi", description: "SwiftUI helps you build great-looking apps across all Apple platforms with the power of Swift — and surprisingly little code. You can bring even better experiences to everyone, on any Apple device, using just one set of tools and APIs.", iconLink: URL("https://developer.apple.com/assets/elements/icons/swiftui/swiftui-96x96_2x.png"), frameworkUrl: URL("https://developer.apple.com/xcode/swiftui/"))
    
}

extension URL {
    init(_ string: StaticString) {
        self.init(string: "\(string)")!
    }
}
