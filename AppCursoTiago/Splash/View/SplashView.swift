//
//  SplashView.swift
//  AppCursoTiago
//
//  Created by Moises Miranda Vilas Boas on 09/03/22.
//

import SwiftUI

struct SplashView: View {
    
    @State var state: SplashUIState = .loading
    
    var body: some View {
        
        switch state {
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
                Text("Carregar tela de login")
            case .goToHomeScreen:
                Text("Carregar tela principal")
            case .error(let msg):
                Text("Mostrar error: \(msg)")
        }
        
        
        
        
        Text("Olá")
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
