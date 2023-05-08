//
//  HourCollectionView.swift
//  Weather
//
//  Created by Roman on 20.04.2023.
//

import UIKit

class HorszontalCollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   
    let cells = 9

    init() {
        let layout = UICollectionViewFlowLayout()
        super.init(frame: .zero, collectionViewLayout: layout)
        
        layout.scrollDirection = .horizontal
        layout.minimumInteritemSpacing = 20
        backgroundColor = .clear
        showsHorizontalScrollIndicator = false
       
        delegate = self
        dataSource = self
        register(HorizontalViewCell.self, forCellWithReuseIdentifier: HorizontalViewCell.reuseId)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension HorszontalCollectionView {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cells
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: HorizontalViewCell.reuseId, for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 78, height: 107)
    }
}
