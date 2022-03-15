//
//  SplashViewModel.swift
//  AppCursoTiago
//
//  Created by Moises Vilas Boas on 15/03/22.
//

import SwiftUI

class SplashViewModel: ObservableObject {
    
    @Published var uiState: SplashUIState = .loading
    
    func onAppear(){
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2)  {
            self.uiState = .goToSignScreen
        }
    }
    func signInView() -> some View {
        return SplashViewRouter.makeSignInView()
        
    }


    }
    



