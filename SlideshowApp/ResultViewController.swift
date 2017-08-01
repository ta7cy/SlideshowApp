//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by tanahashishinhichi on 2017/07/30.
//  Copyright © 2017年 ta7cy. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bigImage: UIImageView!

    var img0 = UIImage()
    var img1 = UIImage()
    var img2 = UIImage()
    
    var img_num2:Int = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        img0 = UIImage(named:"00_kurapika")!
        img1 = UIImage(named:"01_mizai")!
        img2 = UIImage(named:"02_kanzai")!
        
        switch img_num2 % 3{
            case 0:bigImage.image = img0
            case 1:bigImage.image = img1
            case 2:bigImage.image = img2
            default:bigImage.image = img0
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
