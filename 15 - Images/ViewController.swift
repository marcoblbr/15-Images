//
//  ViewController.swift
//  15 - Images
//
//  Created by Marco Linhares on 6/21/15.
//  Copyright (c) 2015 Marco Linhares. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var i = 0
    
    var timer = NSTimer ()
    
    @IBOutlet weak var imageAlien: UIImageView!
    
    @IBAction func buttonUpdate(sender: AnyObject) {
        if ++i == 5 {
            i = 0
        }
        
        imageAlien.image = UIImage (named: "frame\(i).png")
    }
    
    
    // função é chamada logo antes da tela ser carregada, quando as
    // subviews estão prontas mas não foram desenhadas na tela ainda
    override func viewDidLayoutSubviews() {
        
        println ("33333")
        
        imageAlien.frame = CGRectMake(100, 200, 0, 0)
        
        // 0 = invisível
        imageAlien.alpha = 0
        
        //imageAlien.center = CGPointMake(imageAlien.center.x + 400, imageAlien.center.y + 200)
    }
    
    // ocorre quando a view aparece na tela
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1, animations: {

            println ("44444")

            self.imageAlien.frame = CGRectMake(100, 200, 100, 200)
            
            // 1 = 100% visível
            self.imageAlien.alpha = 1
            
            // center é o centro da imagem, bem no seu meio
            //self.imageAlien.center = CGPointMake(self.imageAlien.center.x - 400, self.imageAlien.center.y - 200)
        })
    }
    
    override func viewWillAppear(animated: Bool) {
        println ("22222")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.25, target: self, selector: Selector ("result"), userInfo: nil, repeats: true)
        
        println ("11111")
    }

    func result () {
        buttonUpdate (self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

