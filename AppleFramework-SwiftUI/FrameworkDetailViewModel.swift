//
//  FrameworkDetailViewModel.swift
//  AppleFramework-SwiftUI
//
//  Created by Songhee Choi on 2022/11/22.
//

import Foundation
import SwiftUI

final class FrameworkDetailViewModel: ObservableObject {
    
    @Published var framework: AppleFramework
    @Published var isSafariPresented: Bool = false {
        didSet {
            print("isSafariPresented: \(isSafariPresented)" )
        }
    }
    
    init(framework: AppleFramework) {
        self.framework = framework
    }
}
