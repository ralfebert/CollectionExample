//
//  ExampleCollectionViewController.swift
//  CollectionExample
//
//  Created by Ralf Ebert on 05.03.19.
//  Copyright © 2019 Ralf Ebert. All rights reserved.
//

import UIKit

private let reuseIdentifier = "ExampleCell"

class ExampleCell : UICollectionViewCell {
    @IBOutlet weak var label: UILabel!
}

class ExampleCollectionViewController: UICollectionViewController {

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ExampleCell

        cell.backgroundColor = .green
        cell.label.text = String(indexPath.row)
    
        return cell
    }

}
