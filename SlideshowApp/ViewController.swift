//
//  ViewController.swift
//  SlideshowApp
//
//  Created by tanahashishinhichi on 2017/07/30.
//  Copyright © 2017年 ta7cy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!

    var img0 = UIImage()
    var img1 = UIImage()
    var img2 = UIImage()
    
    var img_num:Int = 9999;
    
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        img0 = UIImage(named:"00_kurapika")!
        img1 = UIImage(named:"01_mizai")!
        img2 = UIImage(named:"02_kanzai")!
        
        imageView.image = img0
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextImage(_ sender: Any) {
        
        if timer == nil{
            img_num += 1
            changeImage(num: img_num)
        }
    }

    @IBAction func prevImage(_ sender: Any) {
        if timer == nil{
            img_num -= 1
            changeImage(num: img_num)
        }
    }
    
    
    @IBAction func playImage(_ sender: Any) {
        
        if timer == nil {
            // play
            timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        }
        else{
            // stop
            timer.invalidate()
            timer = nil
        
        }
        
    }
    
    
    func changeImage(num:Int){
        
        switch num%3{
        
            case 0: imageView.image = img0
            case 1: imageView.image = img1
            case 2: imageView.image = img2
            default: imageView.image = img0
        }
    }
    
    func updateTimer(timer: Timer){
    
        img_num += 1
        changeImage(num: img_num)
        
    }
    
    @IBAction func onTapImage(_ sender: Any) {
        
        //segue
        performSegue(withIdentifier: "result", sender: img_num)
        
        if timer != nil {
            // stop
            timer.invalidate()
            timer = nil
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController: ResultViewController = segue.destination as! ResultViewController
        resultViewController.img_num2 = sender as! Int
    }
    
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
    

}

