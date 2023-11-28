//
//  File.swift
//  
//
//  Created by Sshanshiashvili on 11/28/23.
//

import Foundation

public enum NetworkError: Error {
    case data
    case response
    case status(code: Int, data: Data)
    case error(error: Error)
    case parse(error: Error)
}
