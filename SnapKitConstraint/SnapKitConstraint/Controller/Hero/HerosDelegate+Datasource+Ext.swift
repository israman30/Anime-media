//
//  HerosDelegate+Datasource+Ext.swift
//  SnapKitConstraint
//
//  Created by Israel Manzo on 10/10/18.
//  Copyright © 2018 Israel Manzo. All rights reserved.
//

import UIKit

extension FourthSample: UICollectionViewDelegateFlowLayout, UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return heroes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! FourthCell
        cell.scouts = heroes[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 400)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailHeros = DetailHeros()
        detailHeros.heroe = heroes[indexPath.item]
        navigationController?.pushViewController(detailHeros, animated: true)
    }
}
