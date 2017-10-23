//
//  LogInPreviewViewController.swift
//  PostTest
//
//  Created by Macbook pro on 23/10/17.
//  Copyright © 2017 Smk IDN. All rights reserved.
//

import UIKit

class LogInPreviewViewController: UIViewController {
    @IBOutlet weak var etUsername: UITextField!
    @IBOutlet weak var etPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func btnLogin(_ sender: Any) {
        if (etUsername.text == "") && (etPassword.text == "") {
            let alertController = UIAlertController(title: "Attention !",
                                                    message: "The Column can't be Empty", preferredStyle : .alert)
            alertController.addAction(UIAlertAction(title: "OK",
                                                    style: .default,handler: nil))
            present(alertController, animated: true, completion: nil)
        } else if (etUsername.text == "rpl2idn") && (etPassword.text == "kitabisa") {
            func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                //check what segue with name passData is available or not
                if(segue.identifier == "checkData"){
                    let sendData = segue.destination as! InputProfilViewController
                }
            }
        }else{
            let alertController = UIAlertController(title: "Attention !",
                                                    message: "Your Username and Profile is Wrong", preferredStyle : .alert)
            alertController.addAction(UIAlertAction(title: "OK",
                                                    style: .default,handler: nil))
            present(alertController, animated: true, completion: nil)
        }
    }
    
    
    override func didReceiveMemoryWarning() {
    
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
