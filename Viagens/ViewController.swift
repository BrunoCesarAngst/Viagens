//
//  ViewController.swift
//  Viagens
//
//  Created by mbcangst on 17/05/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tabelaDeViagens: UITableView!
    
    let listaDeViagens: Array<String> = [
        "Arroio do Sal", "Torres", "Passo de Torres", "Porto Alegre"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabelaDeViagens.dataSource = self
        
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaDeViagens.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = listaDeViagens[indexPath.row]
        
        
        return cell
    }

}
