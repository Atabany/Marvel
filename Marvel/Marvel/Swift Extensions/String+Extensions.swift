//
//  String+Extensions.swift
//  Marvel
//
//  Created by Mohamed Elatabany on 29/05/2022.
//

import Foundation
import CryptoKit


public extension String {
    
    // Hash that we used in the APIS Request
    var MD5: String {
        let digest = Insecure.MD5.hash(data: self.data(using: .utf8) ?? Data())
        return digest.map {
            String(format: "%02hhx", $0)
        }.joined()
    }
    
}


