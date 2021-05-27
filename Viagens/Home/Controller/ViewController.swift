//
//  ViewController.swift
//  Viagens
//
//  Created by mbcangst on 17/05/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tabelaDeViagens: UITableView!
    @IBOutlet weak var viewHoteis: UIView!
    @IBOutlet weak var viewPacotes: UIView!
    
    let listaDeViagens: Array<Viagem> = File().retornaTodasAsViagens()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabelaDeViagens.dataSource = self
        self.tabelaDeViagens.delegate = self
        self.viewHoteis.layer.cornerRadius = 10
        self.viewPacotes.layer.cornerRadius = 10
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaDeViagens.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        let viagemAtual = listaDeViagens[indexPath.row]
        
        cell.labelTitulo.text = viagemAtual.titulo
        cell.labelQuantidadeDias.text = "\(viagemAtual.quantidadeDeDias) dias"
        cell.labelPreco.text = viagemAtual.preco
        
        // mudei uma opção do uiimageview chamada Content Mode para Scale to Fill
        cell.imagemViagem.image = UIImage(named: viagemAtual.caminhoDaImagem)
        
        cell.imagemViagem.layer.cornerRadius = 10
        cell.imagemViagem.layer.masksToBounds = true
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 175
    }

}

