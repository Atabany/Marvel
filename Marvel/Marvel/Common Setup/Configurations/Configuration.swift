//
//  Configuration.swift
//  Marvel
//
//  Created by Mohamed Elatabany on 29/05/2022.
//


import Foundation

enum Config {
    @XcodeConfig(key: "API_URL") static var apiURL: String
    @XcodeConfig(key: "PUBLIC_KEY") static var publicKey: String
    @XcodeConfig(key: "PRIVATE_KEY") static var privateKey: String
    @XcodeConfig(key: "PAGE_LIMIT") static var pageLimit: Int
}



@propertyWrapper
public struct XcodeConfig<Value: LosslessStringConvertible> {
    
    // MARK: Private Properties
    
    private let key: String
    private let bundle: Bundle
    
    // MARK: Public Properties
    
    public var wrappedValue: Value { value(for: key) }
    
    // MARK: Init
    
    public init(key: String, bundle: Bundle = .main) {
        self.key = key
        self.bundle = bundle
    }
    
    // MARK: Implementation
    
    private func value(for key: String) -> Value {
        guard let object = bundle.object(forInfoDictionaryKey: key) else {
            fatalError("Missing key: \(key)")
        }

        switch object {
        case let value as Value:
            return value
            
        case let string as String:
            guard let value = Value(string) else { fallthrough }
            return value
            
        default:
            fatalError("Invalid Value")
        }
    }
}



