//
//  RideDataViewController.swift
//  Thumbs-Up
//
//  Created by Matthew on 2/23/19.
//  Copyright © 2019 Matthew. All rights reserved.
//

import UIKit
import FirebaseDatabase

class RideDataViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        print("Hi there!!!!!!!!!!!")
        var reference : DatabaseReference!
        reference = Database.database().reference()
        _ = reference.child("Drivers").observeSingleEvent(of: .value) { (snapshot) in
            let value  = snapshot.value as? NSDictionary;
//            let thing = value?["DriverName"] as? String ?? "";
            print("Here.......")
            print(value)
//            print(thing)
        };
//        print(drivers)
        //Read data from firebase database
//        databaseHandle = databaseReference.child("Drivers").observe(.childAdded, with: { (data) in
//            let name : String = (data.value as? String)!
//            debugPrint(name)
//        })
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
