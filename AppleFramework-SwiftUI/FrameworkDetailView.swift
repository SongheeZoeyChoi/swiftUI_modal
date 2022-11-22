//
//  FrameworkDetailView.swift
//  AppleFramework-SwiftUI
//
//  Created by Songhee Choi on 2022/11/22.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    @StateObject var viewModel: FrameworkDetailViewModel
    
//    @Binding var framework: AppleFramework?
//    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode> // for dismiss : 환경변수를 사용하여 값을 나타냄 애플에서 정의해놓은거!
//    
    var body: some View {
        VStack(spacing: 30){
            Image(viewModel.framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(viewModel.framework.name)
                .font(.system(size: 24, weight: .bold))
            Text(viewModel.framework.description)
                .font(.system(size: 16, weight: .regular))
            
            Button {
//                presentationMode.wrappedValue.dismiss() // test : presentationMode를 사용하여 dismiss 처리
                print("--->Safari 띄우기")
            } label: {
                Text("Learn More")
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .foregroundColor(.white)
            }
            .frame(maxWidth: .infinity, minHeight: 80)
            .background(.pink)
            .cornerRadius(40)

        }
        .padding(EdgeInsets(top: 0, leading: 30, bottom: 30, trailing: 30))
//        //@Environment 환경변수 값 확인할 때
//        .onAppear{
//            print("onAppear: presentationMode value is \(presentationMode.wrappedValue.isPresented)")
//        }
//        .onDisappear {
//            print("onDisappear: presentationMode value is \(presentationMode.wrappedValue.isPresented)")
//        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
//        FrameworkDetailView(framework: .constant(AppleFramework.list[0]))
        let vm = FrameworkDetailViewModel(framework: AppleFramework.list[0])
        FrameworkDetailView(viewModel: vm)
    }
}
