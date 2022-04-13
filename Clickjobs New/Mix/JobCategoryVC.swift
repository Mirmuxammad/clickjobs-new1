//
//  JobCategoryVC.swift
//  Clickjobs New
//
//  Created by user1 on 07/04/22.
//

struct JobCategory {
    var jobType : String
}

protocol JobCategoryVCDelegate {
    func jobcategoryTapped(choseJob: JobCategory)
}


import UIKit

class JobCategoryVC: UIViewController {

    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
            tableView.register(UINib(nibName: "JobCategoryTVC", bundle: nil), forCellReuseIdentifier: "JobCategoryTVC")
        }
    }
    
    var jobs : [JobCategory] = [
    JobCategory(jobType: "iOS"),
    JobCategory(jobType: "Andirod"),
    JobCategory(jobType: "Web development"),
    JobCategory(jobType: "Backend"),
    JobCategory(jobType: "Fronted"),
    JobCategory(jobType: "Desctop development")
    ]
    
    var delegate : JobCategoryVCDelegate?
    
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
        title = "Job category"
        self.view.backgroundColor = .defaultGray
        navigationController?.navigationBar.barTintColor =  .defaultGray
        tableView.backgroundView?.backgroundColor = .defaultGray
        
    }


}

//MARK: Table viewr
extension JobCategoryVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jobs.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "JobCategoryTVC") as? JobCategoryTVC else {return UITableViewCell()}
        cell.updateCell(job: jobs[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.jobcategoryTapped(choseJob: jobs[indexPath.row])
        navigationController?.popViewController(animated: true)
    }

}
