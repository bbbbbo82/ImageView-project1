//
//  ViewController.swift
//  TimerImageView02
//
//  Created by 방문 사용자 on 2019. 3. 28..
//  Copyright © 2019년 방문 사용자. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var alienImageViewer: UIImageView!
    @IBOutlet weak var countLabel: UILabel!
    
    var count = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        alienImageViewer.image = UIImage(named: "frame1.png")
        countLabel.text = "Frame\(count).png"
    }


    @IBAction func buttonPressed(_ sender: Any) {
        count += 1
        
        if(count>5){
            count = 1
        }
        alienImageViewer.image = UIImage(named: "frame\(count).png")
        countLabel.text = "frame\(count).png"
        
    }
}

