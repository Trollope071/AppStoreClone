//
//  Service.swift
//  AppStoreClone
//
//  Created by Савва Варма on 22.03.2023.
//

import Foundation

class Service {
    
    static let shared = Service() // singleton
    
    func fetchApps(searchTerm: String, completion: @escaping ([Result], Error?) -> ()) {
        
        let urlString = "https://itunes.apple.com/search?term=\(searchTerm)&entity=software"
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
    
    func fetchTopPaid(completion: @escaping (AppGroup?, Error?) -> ()) {
        fetchAppGroup(urlString: "https://rss.applemarketingtools.com/api/v2/ru/apps/top-paid/25/apps.json", completion: completion)
    }
    
    func fetchGamesFree(completion: @escaping (AppGroup?, Error?) -> ()) {
        let urlString = "https://rss.applemarketingtools.com/api/v2/ru/apps/top-free/25/apps.json"
        fetchAppGroup(urlString: urlString, completion: completion)
    }
    
    // helper
    func fetchAppGroup(urlString: String, completion: @escaping (AppGroup?, Error?) -> Void) {
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, resp, err) in
            if let err = err {
                completion(nil, err)
                return
            }
            do {
                let appGroup = try JSONDecoder().decode(AppGroup.self, from: data!)
                // success
                completion(appGroup, nil)
            } catch {
                completion(nil, error)
            }
        }.resume()
    }
}
