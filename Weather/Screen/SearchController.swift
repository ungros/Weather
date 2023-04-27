//
//  SearchController.swift
//  Weather
//
//  Created by Roman on 25.04.2023.
//

import SnapKit
import UIKit

class SearchController: RootViewController {
    
    let searchBar = UISearchBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
}

extension SearchController {
    func setup() {
        
        view.addSubview(searchBar)
        searchBar.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.center.equalToSuperview()
            make.top.equalToSuperview().inset(30)
        }
    }
}
