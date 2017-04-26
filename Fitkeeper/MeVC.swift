//
//  MeVC.swift
//  Fitkeeper
//
//  Created by Erik Myhrberg on 2017-04-26.
//  Copyright © 2017 Erik. All rights reserved.
//

import UIKit
import FirebaseAuth

class MeVC: UIViewController {

    @IBOutlet weak var userEmailLbl: UILabel!
    
    var userEmailLblText = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userEmailLbl.text = userEmailLblText
        userEmailLbl.text = "Hey now"
    }

    @IBAction func signouttest(_ sender: Any) {
        do {
        try FIRAuth.auth()?.signOut()
            self.dismiss(animated: true, completion: nil)
            print("User did sign out")
        } catch let error {
            print("Error: ", error)
        }
    }


}
