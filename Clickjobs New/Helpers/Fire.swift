//
//  Fire.swift
//  Clickjobs New
//
//  Created by Mustafo Asqarov on 27/03/2022.
//

import Foundation
import Firebase

class Fire {
    
    static var shared: Fire = Fire()
    
    private var db = Firestore.firestore()
    
    
    
    func registerEmployee(newUser: User, createdUser: @escaping (User?) -> Void) {
        
        Loader.start()
        
        self.isUserExist(login: newUser.login, password: newUser.password, withLoader: false) { isUserExist in
            if isUserExist {
                print("User already exists")
                createdUser(nil)
                Alert.showAlert(forState: .error, message: "User with \(newUser.login) is already exists", duration: 3, userInteration: true)
                Loader.stop()
            } else {
                //Create new user
                var ref: DocumentReference? = nil
                ref = self.db.collection("user").addDocument(data: newUser.getDictionary()) { err in
                    Loader.stop()
                    
                    if let err = err {
                        print("Error adding document: \(err)")
                        createdUser(nil)
                        Alert.showAlert(forState: .error, message: "Unknown error occured, please try again", duration: 3, userInteration: true)
                    } else {
                        print("Document added with ID: \(ref!.documentID)")
                        
                        Alert.showAlert(forState: .success, message: "Welcome to the board!", duration: 3, userInteration: true)
                        var newU = newUser
                        newU.id = ref!.documentID
                        Cache.share.setUser(token: ref!.documentID)
                        createdUser(newU)
                    }
                }
            }
        }

    }
    
    
    func isUserExist(login: String, password: String, withLoader: Bool = true, completion: @escaping (Bool) -> Void) {
        let users = db.collection("user")
        
        if withLoader {Loader.start()}

        // Create a query against the collection.
        let _ = users.whereField("login", isEqualTo: login).whereField("password", isEqualTo: password).getDocuments { snapshot, error in
            
            if withLoader {Loader.stop()}
            
            if let snap = snapshot {
                if snap.documents.isEmpty {
                    completion(false)
                    Alert.showAlert(forState: .error, message: "User with these crendentials not found!", duration: 3, userInteration: true)
                } else {
                    print("✅")
                    completion(true)
                    Cache.share.setUser(token: snap.documents.first!.documentID)
                }
            } else {
                Alert.showAlert(forState: .error, message: "Unknown error occured, please try again", duration: 3, userInteration: true)
                print("XATO, KIROLMAYSAN")
                completion(false)
            }
        }
    }
    
    
    
    func addVacancy(vac: Vacancy, done: @escaping (Bool) -> Void) {
        
        var ref: DocumentReference? = nil
        Loader.start()
        ref = self.db.collection("vacancy").addDocument(data: vac.getDictionary()) { err in
            Loader.stop()
            
            if let err = err {
                print("Error adding document: \(err)")
                done(false)
                Alert.showAlert(forState: .error, message: "Unknown error occured, please try again", duration: 3, userInteration: true)
            } else {
                print("Document added with ID: \(ref!.documentID)")
                
                Alert.showAlert(forState: .success, message: "Your vacancy sent to the developers!", duration: 3, userInteration: true)
                done(true)
            }
        }
    }
    
    
    func getVacancyies(newVacs: @escaping ([Vacancy]) -> Void) {
        self.db.collection("vacancy").addSnapshotListener { snapshot, err in
            if let err = err {
                Alert.showAlert(forState: .error, message: "Error getting data", duration: 2, userInteration: true)
                print(err)
            } else {
                print("✅")
                print(snapshot?.documents)
                var vacs: [Vacancy] = []
                
                for doc in snapshot!.documents {
                    let doc1 = doc.data() as! [String:String]
                    let v = Vacancy.init(userId: doc1["userId"]!, infoUrl: doc1["infoUrl"]!, salary: doc1["salary"]!, title: doc1["title"]!, workAddress: doc1["workAddress"]!, jobTypeId: doc1["jobTypeId"]!, jobTag: doc1["jobTag"]!, companyName: doc1["companyName"]!)
                    vacs.append(v)
                }
                newVacs(vacs)
            }
        }
    }
    
}
