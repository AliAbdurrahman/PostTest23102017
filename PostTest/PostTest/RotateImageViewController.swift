//
//  RotateImageViewController.swift
//  PostTest
//
//  Created by Macbook pro on 23/10/17.
//  Copyright © 2017 Smk IDN. All rights reserved.
//

import UIKit

class RotateImageViewController: UIViewController {
    @IBOutlet weak var imgPreview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btnRotate(_ sender: Any) {
        UIView.animate(withDuration: 2.0, animations: {
            self.imgPreview.transform = CGAffineTransform (rotationAngle: (360.0 * .pi) / 360.0)
        })
    }
    @IBAction func btnRotatee(_ sender: Any) {
        imgPreview.transform = CGAffineTransform.identity.translatedBy(x: 100, y: 300).rotated(by: CGFloat.pi / 4).scaledBy(x: -1, y: 2)
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
