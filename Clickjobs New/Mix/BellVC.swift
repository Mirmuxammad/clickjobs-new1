//
//  BellVC.swift
//  Clickjobs New
//
//  Created by user1 on 13/04/22.
//

import UIKit

class BellVC: UIViewController {

    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
            tableView.register(UINib(nibName: "BellTVC", bundle: nil), forCellReuseIdentifier: "BellTVC")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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
    
    
    func otherSetups() {
        self.view.backgroundColor = .defaultGray
        navigationController?.navigationBar.barTintColor =  .defaultGray
        self.tableView.backgroundView?.backgroundColor = .defaultGray
        
    }

}


extension BellVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "BellTVC", for: indexPath) as? BellTVC else { return UITableViewCell() }
        
        return cell
    }
    
    
}
