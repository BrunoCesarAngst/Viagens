//
//  File.swift
//  Viagens
//
//  Created by mbcangst on 27/05/21.
//

import UIKit

class File: NSObject {
    
    func retornaTodasAsViagens() -> Array<Viagem> {
        let ceara = Viagem(titulo: "Ceará", quantidadeDeDias: 3, preco: "1.800,59", caminhoDaImagem: "Assets/img1.png")
        let rioDeJaneiro = Viagem(titulo: "Rio de Janeiro", quantidadeDeDias: 6, preco: "1.200,00", caminhoDaImagem: "Assets/img2.jpg")
        let interiorSaoPaulo = Viagem(titulo: "Atibaia - Sao Paulo", quantidadeDeDias: 1, preco: "890,00", caminhoDaImagem: "Assets/img3.jpg")
        let paraiba = Viagem(titulo: "Paraíba", quantidadeDeDias: 3, preco: "1.385,00", caminhoDaImagem: "Assets/img4.jpg")
        let fortaleza = Viagem(titulo: "Fortaleza", quantidadeDeDias: 4, preco: "3.120,00", caminhoDaImagem: "Assets/img5.jpg")
        let listaViagem:Array<Viagem> = [rioDeJaneiro, ceara, interiorSaoPaulo, paraiba, fortaleza]
        
        return listaViagem
    }
}
