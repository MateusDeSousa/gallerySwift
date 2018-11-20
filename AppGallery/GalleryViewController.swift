//
//  GalleryViewController.swift
//  AppGallery
//
//  Created by Mateus de Sousa Silva on 20/11/2018.
//  Copyright © 2018 Mateus de Sousa Silva. All rights reserved.
//

import UIKit

class GalleryViewController: UIViewController {

    var gallery = [UIImage.init(named: "ad"), UIImage.init(named: "ae"), UIImage.init(named: "af"), UIImage.init(named: "ag"), UIImage.init(named: "al"), UIImage.init(named: "am")]
    
    var cont = 0
    
    @IBOutlet weak var VieeGallery: UIImageView!
    
    
    
    @IBAction func Proximo(_ sender: UIButton) {
        cont += 1
        
        if cont <= 5 {
            VieeGallery.image = gallery[cont]
        }else{
            VieeGallery.image = gallery[0]
            cont = 0
        }
        
    }
    
    @IBAction func Anterior(_ sender: UIButton) {
        cont -= 1
        
        if cont >= 0 {
            VieeGallery.image = gallery[cont]
        }else{
            VieeGallery.image = gallery[5]
            cont = 5
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        VieeGallery.image = gallery[0]
        // Do any additional setup after loading the view.
    }
    

    

}

