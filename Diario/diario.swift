//
//  diario.swift
//  Diario
//
//  Created by Jairo Ferreira da Silva Junior on 28/05/20.
//  Copyright © 2020 Jairo Ferreira da Silva Junior. All rights reserved.
//

import Foundation

class Diario {
    
    var Name: String
    var IsDone: Bool

    init(Name: String, IsDone: Bool = false) {
        self.Name = Name
        self.IsDone = IsDone
        
    }
}
