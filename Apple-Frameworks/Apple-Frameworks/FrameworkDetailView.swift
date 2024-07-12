//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by mahendran-14703 on 12/07/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var frameWork: Framework
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        
        VStack {
            
            HStack() {
                
                Spacer()
                Button {
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
            
            Spacer()
            TitleView(framework: frameWork)
            
            Text("\(frameWork.description)")
            
            Spacer()
            
            Button {
                 print("Learn more tapped")
            } label: {
                MoreButton(title: "Learn more", textColor: .white, backgroundColor: .red)
                    .padding(.top, 60)
            }
        }
        .padding()
    }
}

struct MoreButton: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280,height: 50)
            .foregroundStyle(textColor)
            .background(backgroundColor)
            .font(.system(size: 20,weight: .bold))
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    FrameworkDetailView(frameWork: MockData.sampleFramework, isShowingDetailView: .constant(true))
}
