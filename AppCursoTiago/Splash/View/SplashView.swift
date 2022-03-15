//
//  SplashView.swift
//  AppCursoTiago
//
//  Created by Anabelle on 09/03/22
//

import SwiftUI

struct SplashView: View {
    
    @ObservedObject var viewModel: SplashViewModel
    var body: some View {
        Group {
            switch viewModel.uiState {
            
            case .loading:
                ZStack {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .padding(20)
                        .background(Color.mint)
                        .ignoresSafeArea()
                }
            case .goToSignScreen:
                viewModel.signInView()
            case .goToHomeScreen:
                Text("Carregar tela principal")
            case .error(let msg):
                Text("Mostrar error: \(msg)")
        }
        }.onAppear(perform: {
            viewModel.onAppear()})
        
    
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
let viewModel = SplashViewModel()
        SplashView(viewModel: viewModel)
    }
}
