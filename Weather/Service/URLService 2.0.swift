//
//  URLService 2.0.swift
//  Weather
//
//  Created by Roman on 24.04.2023.
//

import Foundation

final class APIService {
    
    static let shared = APIService()
    
    enum APIError: Error {
        case error(_ errorString: String)
    }
    
    func getJSON(urlString: String,
                 complition: @escaping (Result<WeatherData, APIError>) -> Void) {
        
        guard let url = URL(string: urlString) else {
            complition(.failure(.error(NSLocalizedString("Error: Invalid URL", comment: ""))))
            return
        }
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                complition(.failure(.error("Error: \(error.localizedDescription)")))
                return
            }
            guard let data = data else {
                complition(.failure(.error(NSLocalizedString("Error: Data us corrupt.", comment: ""))))
                return
            }
            let decoder = JSONDecoder()
            do {
                let decodedData = try decoder.decode(WeatherData.self, from: data)
                complition(.success(decodedData))
                return
            } catch let decodingError {
                complition(.failure(APIError.error("Error: \(decodingError.localizedDescription)")))
                return
            }
        }.resume()
        
    }
}
