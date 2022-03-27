//
//  VacanciesVC.swift
//  ClickJobs - Page 2
//
//  Created by MIrmuxammad on 25/03/22.
//

import UIKit

class VacanciesVC: UIViewController {
    @IBOutlet weak var barView: UIView! {
        didSet {
            barView.backgroundColor = UIColor(named: "Solid")
        }
    }
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
            tableView.register(UINib(nibName: "VacanciesTVC", bundle: nil), forCellReuseIdentifier: "VacanciesTVC")
        }
    }
    
    
    var vacancies: [String] = ["","","","","","","","","","","",""]
    let searchController = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setNavBar()

    }
    
    @objc func addTapped(sender: UIBarButtonItem) {
        
    }

}
//MARK: -Table View-
extension VacanciesVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        vacancies.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "VacanciesTVC", for: indexPath) as? VacanciesTVC else { return UITableViewCell() }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = VacanciesDesVC.init(nibName: "VacanciesDesVC", bundle: nil)
        
        self.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(vc, animated: true)
        self.hidesBottomBarWhenPushed = false
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        self.navigationController?.navigationBar.barTintColor = UIColor(named: "Solid")
    }
    
}
//MARK: -UINavigationControllerBar methodos-
extension VacanciesVC {
    func setNavBar() {
        
        view.backgroundColor = UIColor(named: "Solid")
        
        title = "Vacancies"
        
        searchController.searchBar.placeholder = "Search vacancies"
        
        let offset = -(searchController.searchBar.frame.height)
        tableView.setContentOffset(CGPoint(x: 0, y: offset), animated: true)
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.hidesSearchBarWhenScrolling = false
        navigationItem.searchController = searchController
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Filter", style: .plain, target: self, action: #selector(addTapped))
        navigationItem.rightBarButtonItem?.tintColor = UIColor(named: "redColor")
        navigationItem.backBarButtonItem?.tintColor = UIColor(named: "redColor")
    }
}