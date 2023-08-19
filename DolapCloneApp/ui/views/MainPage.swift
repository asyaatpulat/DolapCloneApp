//
//  ViewController.swift
//  DolapCloneApp
//
//  Created by Asya Atpulat on 18.08.2023.
//

import UIKit

class MainPage: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var productCollectionView: UICollectionView!
    var productList = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productCollectionView.delegate = self
        productCollectionView.dataSource = self
        setupNavigationBar()
        setProduct()
        setCell()
       
    }
    private func setupNavigationBar() {
        navigationItem.title = "Dolap"
        let appearance = UINavigationBarAppearance()
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.backgroundColor = UIColor(named: "DolapColor")
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
    }
    private func setProduct() {
        productList = ProductDataManager.shared.getProductList()
    }

    private func setCell() {
        let design = UICollectionViewFlowLayout()
        design.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        design.minimumInteritemSpacing = 2
        design.minimumLineSpacing = 2
        
        let screenWeight = UIScreen.main.bounds.width
        let itemWeight = (screenWeight - 15) / 2
        
        design.itemSize = CGSize(width: itemWeight, height: itemWeight*1.6)
        productCollectionView.collectionViewLayout = design
    }

}

extension MainPage : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productList.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let product = productList[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as! ProductCell
        cell.imageViewProduct.image = UIImage(named: product.image!)
        cell.labelPrice.text = String(format: "%.3f TL", product.price!)
        cell.labelProductBrand.text = "\(product.brand!)"
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.3
        cell.layer.cornerRadius = 10.0
        return cell
    }
}

