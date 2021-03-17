//
//  ViewController.swift
//  MiniPoker
//
//  Created by marco rodriguez on 16/03/21.
//

import UIKit

class ViewController: UIViewController {
    
    var imagenes = [#imageLiteral(resourceName: "8"),#imageLiteral(resourceName: "5"),#imageLiteral(resourceName: "9"),#imageLiteral(resourceName: "7"),#imageLiteral(resourceName: "4"),#imageLiteral(resourceName: "10")]

    @IBOutlet weak var carta5ImgaeView: UIImageView!
    @IBOutlet weak var carta4ImageView: UIImageView!
    @IBOutlet weak var carta3ImageView: UIImageView!
    @IBOutlet weak var carta2ImageView: UIImageView!
    @IBOutlet weak var carta1ImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("cuando carga la aplicacion por primera vez")
    }
    
   
    

    @IBAction func jugarButton(_ sender: UIButton) {
        let num = Int.random(in: 1...5)
        let num2 = Int.random(in: 1...5)
        let num3 = Int.random(in: 1...5)
        let num4 = Int.random(in: 1...5)
        
        carta1ImageView.image = imagenes[num]
        carta2ImageView.image = imagenes[num2]
        carta3ImageView.image = imagenes[num3]
        carta4ImageView.image = imagenes[num]
        carta5ImgaeView.image = imagenes[num]
        
    }
    
}

