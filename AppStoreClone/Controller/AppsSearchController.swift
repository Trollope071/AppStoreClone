//
//  AppsSearchController.swift
//  AppStoreClone
//
//  Created by Савва Варма on 21.03.2023.
//

import UIKit

class AppsSearchController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    fileprivate let cellId = "id1234"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchItunesApps()
        collectionView.register(SearchResultCell.self, forCellWithReuseIdentifier: cellId)
        
    }
    
    fileprivate var appResults = [Result]()
    
    fileprivate func fetchItunesApps() {
        Service.shared.fetchApps { results, err in
            
            if let err = err {
                print("Failed to fetch apps:", err)
                return
            }
            self.appResults = results
            DispatchQueue.main.async {
                self.collectionView.reloadData()
            }
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width, height: 320)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return appResults.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! SearchResultCell
        
        let appResult = appResults[indexPath.item]
        cell.nameLabel.text = appResult.trackName
        cell.categoryLabel.text = appResult.primaryGenreName
        cell.ratingsLabel.text = "0"
        guard let userRating = appResult.averageUserRating else { return cell }
        cell.ratingsLabel.text = "Rating: \(round(userRating * 10) / 10.0)"
        return cell
    }
    
    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
