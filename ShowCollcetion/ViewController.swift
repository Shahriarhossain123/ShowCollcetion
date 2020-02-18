//
//  ViewController.swift
//  ShowCollcetion
//
//  Created by apple on 2/17/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {

    

    var anipic = ["lion","panda","raccondog","splash","tiger","wolf","lion","panda","raccondog","splash","tiger","wolf","lion","panda","raccondog","splash","tiger","wolf","lion","panda","raccondog","splash","tiger","wolf","lion","panda","raccondog","splash","tiger","wolf","lion","panda","raccondog","splash","tiger","wolf","lion","panda","raccondog","splash","tiger","wolf","lion","panda","raccondog","splash","tiger","wolf","lion","panda","raccondog","splash","tiger","wolf"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return anipic.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collection = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        collection.showPic.image = UIImage(named: anipic[indexPath.item])

        return collection
    }


}

