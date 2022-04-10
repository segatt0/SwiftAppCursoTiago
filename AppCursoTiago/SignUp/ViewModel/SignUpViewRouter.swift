//
//  SignUpViewRouter.swift
//  AppCursoTiago
//
//  Created by Moises Vilas Boas on 10/04/22.
//

import SwiftUI


enum SignUpViewRouter {
    static func makeHomeView() -> some View {
        let viewModel = HomeViewModel()
        return HomeView(viewModel: viewModel)
    }
    
}

