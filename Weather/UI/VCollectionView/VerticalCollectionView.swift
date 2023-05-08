//
//  WeeklyCollectionView.swift
//  Weather
//
//  Created by Roman on 21.04.2023.
//

import UIKit

class VerticalCollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   
    let cells = 9

    init() {
        let layout = UICollectionViewFlowLayout()
        super.init(frame: .zero, collectionViewLayout: layout)
        
        layout.scrollDirection = .vertical
        layout.minimumInteritemSpacing = 0
        backgroundColor = .clear
        showsVerticalScrollIndicator = false
       
        delegate = self
        dataSource = self
        register(VerticalViewCell.self, forCellWithReuseIdentifier: VerticalViewCell.reuseId)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension VerticalCollectionView {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cells
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: VerticalViewCell.reuseId, for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 360, height: 72)
    }
}
