//
//  ViewController.swift
//  abdullahNN
//
//  Created by abdullah  on 12/05/1441 AH.
//  Copyright © 1441 abdullah . All rights reserved.
//

import UIKit
import Lottie


class ViewController: UIViewController {
    
    @IBOutlet weak var ANMPlay: UIButton!
    
    @IBAction func ANMPlay(_ sender: Any) {
         animationView.play()
        
    }
    
    
    @IBOutlet weak var LottieanimationView: UIView!
    
   
    
    
     let animationView = AnimationView()
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        startAnimation()
        
    }
    
    
    
    func startAnimation() {
        
        
        animationView.animation = Animation.named("vcTransition1")
        animationView.frame.size = LottieanimationView.frame.size
        animationView.contentMode = .scaleToFill

        LottieanimationView.addSubview(animationView)
        animationView.backgroundBehavior = .pauseAndRestore

        animationView.play()
        
     
        
    }
    
    
    
    
    
    
    
}
