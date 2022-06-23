//
//  BouncyView+SwiftUI.swift
//  Quiz Speedrun
//
//  Created by Jia Chen Yee on 23/6/22.
//

import Foundation
import SwiftUI
import UIKit

struct BouncyView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> Bouncy {
        Bouncy()
    }
    
    func updateUIView(_ uiView: Bouncy, context: Context) {
        
    }
}
