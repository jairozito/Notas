//
//  DiarioStore.swift
//  Diario
//
//  Created by Jairo Ferreira da Silva Junior on 28/05/20.
//  Copyright © 2020 Jairo Ferreira da Silva Junior. All rights reserved.
//

import Foundation

class DiarioStore {
    var diarios = [[Diario](), [Diario]()]

    // add diarios
    func add(_ task: Diario, at index: Int, IsDone: Bool = false) {
        let section = IsDone ? 1 : 0
        diarios[section].insert(task, at: index)
}

// remover diarios
    func remove(at index: Int, IsDone: Bool = false) -> Diario {
        let section = IsDone ? 1 : 0
        return diarios[section].remove(at: index)
    }
    
}
