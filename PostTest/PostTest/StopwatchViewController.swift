//
//  StopwatchViewController.swift
//  PostTest
//
//  Created by Macbook pro on 23/10/17.
//  Copyright © 2017 Smk IDN. All rights reserved.
//

import UIKit

class StopwatchViewController: UIViewController {
    var counter = 0.0
    var timer = Timer()
    var isPlaying = false
    
    @IBOutlet weak var labelTime: UILabel!
    @IBOutlet weak var labelStart: UIButton!
    @IBOutlet weak var labelPause: UIButton!
    @IBOutlet weak var labelStop: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelTime.text = String(counter)
        labelPause.isEnabled = false
        

        // Do any additional setup after loading the view.
    }
    @IBAction func btnStart(_ sender: Any) {
        if(isPlaying){
            return
        }
        
        labelStart.isEnabled = false
        //button pause aktif
        labelStart.isEnabled = true
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(UpdateTimer), userInfo: nil, repeats: true)
        
        isPlaying = true
        counter = counter + 0.1
        
        labelTime.text = String(format: "%.1f", counter)
        
        
    }
    
    @objc func UpdateTimer() {
        counter = counter + 0.1
        labelTime.text = String(format: "%.1f", counter)
    }
    @IBAction func btnPause(_ sender: Any) {
        labelStart.isEnabled = true
        
        labelPause.isEnabled = false
        
        timer.invalidate()
        
        //mengatur isPlaying false
        isPlaying = false
    }
    @IBAction func btnStop(_ sender: Any) {
        labelStart.isEnabled = true
        
        labelPause.isEnabled = false
        
        timer.invalidate()
        
        isPlaying = false
        
        counter = 0.0
        
        labelTime.text = String(counter)
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
