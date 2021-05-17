//
//  Viagem.swift
//  Viagens
//
//  Created by mbcangst on 17/05/21.
//

import UIKit

class Viagem: NSObject {
    let titulo: String
    let quantidadeDeDias: String
    let preco: String
    let caminhoDaImagem: String
    
    init(titulo: String, quantidadeDeDias: String, preco: String, caminhoDaImagem: String) {
        self.titulo = titulo
        self.quantidadeDeDias = quantidadeDeDias
        self.preco = preco
        self.caminhoDaImagem = caminhoDaImagem
    }
}
