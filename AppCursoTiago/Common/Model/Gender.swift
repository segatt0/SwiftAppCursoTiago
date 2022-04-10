//
//  Gender.swift
//  AppCursoTiago
//
//  Created by Moises Vilas Boas on 06/04/22.
//

import Foundation


enum Gender: String, CaseIterable, Identifiable {
    case Male = "Masculino"
    case Female = "Feminino"
    case Outro = "Outros"
    
    var id: String {
        self.rawValue
    }
    
    
}


