//
//  HalfSheetHelper.swift
//  Stack Underflow
//
//  Created by Antal Lepetit on 22.06.22.
//

import Foundation
import SwiftUI

struct HalfSheetHelper<SheetView: View>: UIViewControllerRepresentable {
    var sheetView: SheetView
    @Binding var showSheet: Bool
    var onEnd: ()->()
    
    let controller = UIViewController()
    
//    func makeCoordinator() -> Coordinator {
//        return Coordinator(parent: self)
//    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        controller.view.backgroundColor = .clear
        
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
        let sheetController = CustomHostingController(rootView: sheetView)
        //sheetController.presentationController?.delegate = context.coordinator
        
        if showSheet {
            uiViewController.present(sheetController, animated: true)
        } else {
            uiViewController.dismiss(animated: true)
        }
    }
    
    
    
}

