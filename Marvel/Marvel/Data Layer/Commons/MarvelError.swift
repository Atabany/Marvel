//
//  MarvelError.swift
//  Marvel
//
//  Created by Anas Alhasani on 5/2/19.
//  Copyright © 2019 Anas Alhasani. All rights reserved.
//

import Foundation

struct MarvelError: Equatable {
    private(set) var message: String

    init(_ message: String) {
        self.message = message
    }
}

// MARK: - LocalizedError

extension MarvelError: LocalizedError {
    var localizedDescription: String {
        message
    }
}



