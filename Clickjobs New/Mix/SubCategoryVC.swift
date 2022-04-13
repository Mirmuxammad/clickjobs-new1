//
//  SubCategoryVC.swift
//  Clickjobs New
//
//  Created by user1 on 13/04/22.
//

import UIKit

struct Techlogy {
    var techname: String
    var techimage: String
}

protocol SubCategoryVCDelegate {
    func jobcategoryTapped(choseJob: Techlogy)
}

class SubCategoryVC: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView! {
        didSet {
            collectionView.delegate = self
            collectionView.dataSource = self
            collectionView.register(UINib(nibName: "SubCategoryCVC", bundle: nil), forCellWithReuseIdentifier: "SubCategoryCVC")
            collectionView.contentInset = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
        }
    }
    
    var delegate : SubCategoryVCDelegate?
    var techs : [Techlogy] = [
        Techlogy(techname: "Kotlin", techimage:  "android"),
        Techlogy(techname: "Swift", techimage: "veu"),
        Techlogy(techname: "NodeJS", techimage: "android"),
        Techlogy(techname: "C++", techimage: "veu"),
        Techlogy(techname: "Java", techimage: "android"),
        Techlogy(techname: "Objecive-C", techimage: "veu"),
        Techlogy(techname: "Macbook", techimage: "android"),
        Techlogy(techname: "iMac", techimage: "veu")
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        backButtonSetup()
        otherSetups()
        navigationController?.navigationBar.prefersLargeTitles = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.tabBarController?.tabBar.isHidden = false
    }
    
    
    func backButtonSetup() {
        navigationItem.backButtonTitle = "Back"
        self.navigationController?.navigationBar.tintColor = .btnRed
    }
    
    func otherSetups() {
        title = "Job type"
        self.view.backgroundColor = .defaultGray
        navigationController?.navigationBar.barTintColor =  .defaultGray
        self.collectionView.backgroundView?.backgroundColor = .defaultGray
        
    }
}

extension SubCategoryVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return techs.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SubCategoryCVC", for: indexPath) as? SubCategoryCVC else { return UICollectionViewCell() }
        
        cell.updateCell(tech: techs[indexPath.item])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView,layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewSize = self.view.frame.width
        return CGSize(width: (collectionViewSize / 3) - 23 , height: (collectionViewSize / 3) - 23 )
    }
   
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        delegate?.jobcategoryTapped(choseJob: techs[indexPath.item])
        navigationController?.popViewController(animated: true)
    }
   
    
    
    
}
