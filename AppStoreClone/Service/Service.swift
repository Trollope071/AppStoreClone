//
//  Service.swift
//  AppStoreClone
//
//  Created by Савва Варма on 22.03.2023.
//

import Foundation

class Service {
    
    static let shared = Service() // singleton
    
    func fetchApps(completion: @escaping ([Result], Error?) -> ()) {
        let urlString = "https://itunes.apple.com/search?term=instagram&entity=software"
        guard let url = URL(string: urlString) else { return }

        // fetch data from internet
        URLSession.shared.dataTask(with: url) { data, resp, err in

            if let err = err {
                print("Failed to fetch apss:", err)
                completion([], nil)
                return
            }

            // success
            guard let data = data else { return }

            do {
                let searchResult =  try JSONDecoder().decode(SearchResult.self, from: data)
                
                completion(searchResult.results, nil)

            } catch let jsonErr {
                print("Failed to decode json:", jsonErr)
                completion([], jsonErr)
            }
        }.resume()
    }
}
