//
//  ContentView.swift
//  UIViewControllerRepresentable
//
//  Created by Дмитрий Спичаков on 12.11.2022.
//

import SwiftUI

struct UIViewControllerRepresentableBootcamp: View {
    
    @State private var showScreen = false
    
    var body: some View {
        VStack {
            Text("Hi")
            
            Button {
                showScreen.toggle()
            } label: {
                Text("Button")
            }

        }
        .sheet(isPresented: $showScreen) {
            BasicUIViewControllerRepresentable()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        UIViewControllerRepresentableBootcamp()
    }
}

struct BasicUIViewControllerRepresentable: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let vc = UIViewController()
        vc.view.backgroundColor = .blue
        return vc
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}
