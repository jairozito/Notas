//
//  DiarioController.swift
//  Diario
//
//  Created by Jairo Ferreira da Silva Junior on 26/05/20.
//  Copyright © 2020 Jairo Ferreira da Silva Junior. All rights reserved.
//

import UIKit

class DiarioController: UITableViewController {
    var diarioStore: DiarioStore!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func addDiario(_ sender: UIBarButtonItem) {
        // setting up alert controller
        let alertController = UIAlertController(title: "Add Diario", message: nil, preferredStyle: .alert)
        
        // set up the actions
        let addAction = UIAlertAction(title: "Add", style: .default, handler: nil)
        let cancelAction = UIAlertAction(title: "cancel", style: .cancel)
        
        // add the text field
        alertController.addTextField { textField in
            textField.placeholder = "Enter Diario Name..."
        }
        
        // add the action
        alertController.addAction(addAction)
        alertController.addAction(cancelAction)
        
        // present
        present(alertController, animated: true)
    }
    
}

// MARK: - DataSource

extension DiarioController {
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 54
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return section == 0 ? "Para fazer" : "Feito"
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return diarioStore.diarios.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return diarioStore.diarios[section].count
    }
   override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    cell.textLabel?.text = diarioStore.diarios[indexPath.section][indexPath.row].Name
    return cell
    }

}
