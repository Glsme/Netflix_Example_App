//
//  ViewController.swift
//  Netflix
//
//  Created by Seokjune Hong on 2022/07/04.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var frozenImage: UIImageView!
    @IBOutlet weak var avaterImage: UIImageView!
    @IBOutlet weak var kingsManImage: UIImageView!
    @IBAction func playButton(_ sender: UIButton) {
        posterImageView.image = UIImage(named: "movie\(Int.random(in: 1...4))")
        print("tapped")
    }
    @IBOutlet weak var posterImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeCircleImage(frozenImage)
        makeCircleImage(avaterImage)
        makeCircleImage(kingsManImage)
    }

    func makeCircleImage(_ image: UIImageView) {
        image.layer.cornerRadius = image.frame.height/2
        image.layer.borderWidth = 1
        image.clipsToBounds = true
    }

}

