//
//  FrameworkDetailViewModel.swift
//  Apple-Frameworks
//
//  Created by mahendran-14703 on 12/07/24.
//

import Foundation

class FrameworkDetailViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
   @Published var isShowingDetailView: Bool = false
}
