//
//  ColorViewController.swift
//  IOSAnimationDemo
//
//  Created by MAC on 2017/6/25.
//  Copyright © 2017年 MAC. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {

    @IBOutlet weak var GrayView: UIView!
  
    @IBOutlet weak var NameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        
          super.viewDidAppear(true)
        UIView.animate(withDuration: 1) { 
            self.GrayView.backgroundColor = UIColor.red
            self.NameLabel.textColor = UIColor.white
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
