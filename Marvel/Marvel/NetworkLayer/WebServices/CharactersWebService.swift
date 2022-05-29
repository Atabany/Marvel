//
//  CharactersWebServices.swift
//  Marvel
//
//  Created by Mohamed Elatabany on 29/05/2022.
//

import Foundation


struct CharactersRequest: DataRequest {
    
    typealias Response = MarvelResponse<MarvelCharacter>
    
    let publicKey: String
    let secretKey: String
    let timestamp: String
    var hash: String
    
    
    init() {
        publicKey = Config.publicKey
        secretKey = Config.privateKey
        timestamp = String(Date().timeIntervalSince1970)
        hash =  "\(timestamp)\(secretKey)\(publicKey)".MD5
    }
    
    var url: String {
        return Config.apiURL + "/characters"
    }

    
    var method: HTTPMethod {
        .get
    }
    
    
    var queryItems: [String : String] {
        [
            "apikey": publicKey,
            "ts" : timestamp,
            "hash" : hash
        ]
    }
    

    

}





