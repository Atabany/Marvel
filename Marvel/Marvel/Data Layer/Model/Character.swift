//
//  Character.swift
//  Marvel
//
//  Created by Mohamed Elatabany on 29/05/2022.
//

import Foundation

struct MarvelCharacter: Codable {
    let id: String?
    let name: String?
    let description: String?
    let thumbnail: Image?
}


struct Image: Codable {
    private let path: String
    private let `extension`: String

    var url: URL? { URL(string: "\(path).\(`extension`)") }

    init(path: String, extension: String) {
        self.path = path
        self.extension = `extension`
    }
}



