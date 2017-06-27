//
//  PositionViewController.swift
//  IOSAnimationDemo
//
//  Created by MAC on 2017/6/24.
//  Copyright © 2017年 MAC. All rights reserved.
//

import UIKit

class PositionViewController: UIViewController {

    @IBOutlet weak var RedView: UIView!
    @IBOutlet weak var BlueView: UIView!
    @IBOutlet weak var PositionView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
          super.viewDidAppear(true)
        
        
        UIView.animate(withDuration: 1) { 
            
            self.PositionView.center.x = self.view.bounds.width - self.PositionView.center.x
         
        
            UIView.animate(withDuration: 1, delay: 0.5, options: UIViewAnimationOptions.curveEaseIn, animations: {
                
                
                self.BlueView.center.y = self.view.bounds.height - self.BlueView.center.y
                
                
            }, completion: nil)
            
            
            UIView.animate(withDuration: 1, delay: 1, options: UIViewAnimationOptions.curveEaseIn, animations: {
                
                self.RedView.center.y = self.view.bounds.height - self.RedView.center.y
                self.RedView.center.x = self.view.bounds.width - self.RedView.center.x
            
                
            }, completion: nil)
            
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
