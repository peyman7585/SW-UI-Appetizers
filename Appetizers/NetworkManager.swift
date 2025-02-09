//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Peyman on 2/9/25.
//

import Foundation

final class NetworkManager {
    static let shared = NetworkManager()
    
    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    private let appetizeURL = baseURL + "appetizers"
    
    private init() {}
    
    func getAppetizers(completed: @escaping(Result<[Appetizer],APError>) -> Void){
        guard let url = URL(string: appetizeURL) else{
            completed(.failure(.invalidURL))
            return
        }
        
        let Task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data,response,error in
            guard let _ = error else{
                completed(.failure(.unableToComplete))
                return
            }
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else{
                completed(.failure(.invalidResponse))
                return
            }
            guard let data = data else{
                completed(.failure(.invalidData))
                return
            }
            
            do{
                let decoder = JSONDecoder()
                let decoderResponse = try decoder.decode(AppetizerResponse.self, from: data)
                completed(.success(decoderResponse.request))
            }catch{
                completed(.failure(.invalidData))
            }
        }
        Task.resume()
    }
}
