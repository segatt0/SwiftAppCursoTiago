//
//  HomeView.swift
//  AppCursoTiago
//
//  Created by Moises Vilas Boas on 04/04/22.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel: HomeViewModel
    
    var body: some View {
        Text("Ola home")
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewModel: HomeViewModel())
    }
}
