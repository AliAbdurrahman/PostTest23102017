//
//  HitungDzikirViewController.swift
//  PostTest
//
//  Created by Macbook pro on 23/10/17.
//  Copyright © 2017 Smk IDN. All rights reserved.
//

import UIKit

class HitungDzikirViewController: UIViewController {
    @IBOutlet weak var labelHitungan: UILabel!
    @IBOutlet weak var labelStepper: UIStepper!
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        labelHitungan.text = Int(sender.value).description
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelStepper.wraps = true
        labelStepper.autorepeat = true
        labelStepper.maximumValue = 33

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
