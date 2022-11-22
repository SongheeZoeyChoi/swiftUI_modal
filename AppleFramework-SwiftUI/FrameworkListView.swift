//
//  ContentView.swift
//  AppleFramework-SwiftUI
//
//  Created by joonwon lee on 2022/05/21.
//

import SwiftUI

struct FrameworkListView: View {
    
//    @State var list: [AppleFramework] = AppleFramework.list
//    @State var isPresented: Bool = false // sheet 메소드 사용하기위해 선언
    // -->> viewModel 로 이동
    @StateObject var viewModel = FrameworkListViewModel()
    
    let layout: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        
        // Grid 만들기
        // - UIKit : UICollectionView
        //   - Data, Presentaion, Layout
        // - SwiftUI : LazyVGrid, LazyHGrid
        //   - ✅ Data, ✅ Presentaion, ✅ Layout
        
        NavigationView {
            ScrollView {
                LazyVGrid(columns: layout) {
                    ForEach($viewModel.models) { $item in
                        FrameworkCell(framework: $item)
                            .onTapGesture { // cell이 tap 되었을때
                                viewModel.isShowingDetail = true // 값을 바꿔줄때는 $ 안씀 : $은 binding 할때 사용.
                                viewModel.selectedItem = item // 선택된 아이템을 가져와서 실제 값을 넣어 줌
                            }
                    }
                }
                .padding([.top, .leading, .trailing], 16.0)
            }
            .navigationTitle("☀️ Apple Framework")
        }
        .sheet(isPresented: $viewModel.isShowingDetail) {
            let vm = FrameworkDetailViewModel(framework: viewModel.selectedItem!)
            FrameworkDetailView(viewModel: vm)
        }
//        // Full Screen Modal
//        .fullScreenCover(isPresented: $viewModel.isShowingDetail) {
////            FrameworkDetailView(framework: $viewModel.selectedItem)
//            let vm = FrameworkDetailViewModel(framework: viewModel.selectedItem!)
//            FrameworkDetailView(viewModel: vm)
//        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkListView()
    }
}
