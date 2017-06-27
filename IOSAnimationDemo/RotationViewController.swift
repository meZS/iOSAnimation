//
//  RotationViewController.swift
//  IOSAnimationDemo
//
//  Created by MAC on 2017/6/25.
//  Copyright © 2017年 MAC. All rights reserved.
//

import UIKit

extension UIImageView {
    // 360度旋转图片
    func rotate360Degree() {
        let rotationAnimation = CABasicAnimation(keyPath: "transform.rotation") // 让其旋转
//         let rotationAnimation = CABasicAnimation(keyPath: "transform.rotation.z") // 让其绕z轴旋转
        rotationAnimation.toValue = NSNumber(value: Double.pi) // 旋转角度
        rotationAnimation.duration = 1// 旋转周期
        rotationAnimation.isCumulative = true // 旋转累加角度
        rotationAnimation.repeatCount = 100000 // 旋转次数
        layer.add(rotationAnimation, forKey: "rotationAnimation")
    }
    // 停止旋转
    func stopRotate() {
        layer.removeAllAnimations()
    }
 
}
class RotationViewController: UIViewController {

    @IBOutlet weak var RotationImgView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    
    
    func spin ()  {
   
        weak var weakSelf = self
        UIView.animate(withDuration: 1, delay: 0, options:UIViewAnimationOptions.curveLinear  , animations: {
                    self.RotationImgView.transform = CGAffineTransform.init(rotationAngle: CGFloat.init(Double.pi))
            
        }) { ( finished)  in
       
              weakSelf?.spin()
               print("nnnnnnn")
               print("5555")
        }

        
    }
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(true)
        self.RotationImgView.clipsToBounds = true
        self.RotationImgView.layer.cornerRadius = 150
//        self.spin()
        
        self.RotationImgView.rotate360Degree()
        
        print("dkdkdkdkdkdkd")
        
        
     
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
