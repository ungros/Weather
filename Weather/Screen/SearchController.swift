//
//  SearchController.swift
//  Weather
//
//  Created by Roman on 25.04.2023.
//

import SnapKit
import UIKit
import CoreLocation

//MARK: Search
class SearchController: UISearchController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setup()
    }
}

extension SearchController {
    func setup() {
        
//        view.addSubview(searchBar)
//        searchBar.snp.makeConstraints { make in
//            make.leading.equalToSuperview()
//            make.center.equalToSuperview()
//            make.top.equalToSuperview().inset(30)
//        }
        
        func updateSearchResults(for searchController: SearchController) {
            guard let text = searchBar.text else {
                return
            }
            print(text)
        }
    }
}

//MARK: Results
class ResultsController: RootViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
    }
}

////extension ResultsController: UISearchResultsUpdating {
////    func updateSearchResults(for searchController: UISearchController) {
////        <#code#>
////    }
////
//    
//}
