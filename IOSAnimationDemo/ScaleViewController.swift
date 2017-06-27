//
//  ScaleViewController.swift
//  IOSAnimationDemo
//
//  Created by MAC on 2017/6/25.
//  Copyright © 2017年 MAC. All rights reserved.
//

import UIKit

class ScaleViewController: UIViewController {

    @IBOutlet weak var BlueView: UIView!
    @IBOutlet weak var RedView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        
         super.viewDidAppear(true)
        
        UIView.animate(withDuration: 1) { 
            
            self.RedView.transform =  CGAffineTransform.init(scaleX: 0.5, y: 0.5)
            self.BlueView.transform = CGAffineTransform.init(scaleX: 2, y: 2)
        }
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
