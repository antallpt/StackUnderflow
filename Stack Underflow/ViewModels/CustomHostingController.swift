//
//  CustomHostingController.swift
//  Stack Underflow
//
//  Created by Antal Lepetit on 22.06.22.
//

import SwiftUI

class CustomHostingController<Content: View>: UIHostingController<Content>{
    override func viewDidLoad() {
        
        view.backgroundColor = .white
        
        
        if let presentationController = presentationController as? UISheetPresentationController {
            presentationController.detents = [
                .medium(),
                .large()
            ]
            
            presentationController.prefersGrabberVisible = true
            presentationController.preferredCornerRadius = 30
        }
    }
}
