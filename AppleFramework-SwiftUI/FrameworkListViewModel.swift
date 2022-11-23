//
//  FrameworkListViewModel.swift
//  AppleFramework-SwiftUI
//
//  Created by Songhee Choi on 2022/11/22.
//

import Foundation

final class FrameworkListViewModel: ObservableObject {
    
    @Published var models: [AppleFramework] = AppleFramework.list
    @Published var isShowingDetail: Bool = false {
        didSet {
            print("isShowingDetail : \(isShowingDetail)")
        }
    }
    @Published var selectedItem: AppleFramework? // 선택되기 전까지 없을수도 있어서 옵셔널
}
