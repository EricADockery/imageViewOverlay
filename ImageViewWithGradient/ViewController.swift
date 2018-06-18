//
//  ViewController.swift
//  ImageViewWithGradient
//
//  Created by Eric Dockery on 6/16/18.
//  Copyright © 2018 Eric Dockery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!

}

extension ViewController: UICollectionViewDelegate {

}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCell", for: indexPath) as! ImageCollectionViewCell
        cell.imageView.overlayContentView.addSubview(cell.gradientView)
        return cell
    }
}
