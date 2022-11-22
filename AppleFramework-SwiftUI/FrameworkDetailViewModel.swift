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
    
    init(framework: AppleFramework) {
        self.framework = framework
    }
}
