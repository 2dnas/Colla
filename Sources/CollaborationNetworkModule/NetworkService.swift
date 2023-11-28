//
//  File 2.swift
//  
//
//  Created by Sshanshiashvili on 11/28/23.
//

import Foundation

public protocol NetworkService {
    typealias Response<T> = (response: HTTPURLResponse, data: T)
    
    func request<T: Decodable>(with request: URL, handler: @escaping (Result<T, Error>) -> Void)
    
    func request(with request: URL, handler: @escaping (Result<Response<Data>, Error>) -> Void)
}
