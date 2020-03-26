//
//  ViewController.swift
//  CollectionView-Movment-Interactions
//
//  Created by khaled saad on 3/26/20.
//  Copyright © 2020 khaled saad. All rights reserved.
//

import UIKit

class MovmentCollectionViewController: UIViewController {

    // MARK: - Public properties -
    @IBOutlet weak var arrangedCollectionView: UICollectionView!
    var numbersArray = ["1","2","3","4","5","6","7"]
    
    // MARK: - Lifecycle -
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionViewSetDelegate()
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(handleLongPress(press:)))
        arrangedCollectionView.addGestureRecognizer(longPress)
    }
    
    private func collectionViewSetDelegate() {
        arrangedCollectionView.delegate = self
        arrangedCollectionView.dataSource = self
    }
    
    @objc func handleLongPress(press:UILongPressGestureRecognizer) {
        
        switch press.state {
        case .began:
            let indexx = arrangedCollectionView.indexPathForItem(at: press.location(in: arrangedCollectionView))
            arrangedCollectionView.beginInteractiveMovementForItem(at: indexx!)
            break
        case .changed:
            arrangedCollectionView.updateInteractiveMovementTargetPosition(press.location(in: arrangedCollectionView))
            break
        case .ended:
            arrangedCollectionView.endInteractiveMovement()
            break
        case .cancelled:
            arrangedCollectionView.cancelInteractiveMovement()
            break
        default:
            break
        }
    }
}

extension MovmentCollectionViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, canMoveItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func collectionView(_ collectionView: UICollectionView, moveItemAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let removeItem = numbersArray.remove(at: sourceIndexPath.item)
        numbersArray.insert(removeItem, at: destinationIndexPath.item)
    }
}

extension MovmentCollectionViewController: UICollectionViewDataSource {
  
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numbersArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = arrangedCollectionView.dequeueReusableCell(withReuseIdentifier: "NamesCollectionViewCell", for: indexPath) as? NamesCollectionViewCell else { return UICollectionViewCell()
        }
        cell.setModel(numbers: numbersArray[indexPath.row])
        return cell
    }
    
}
