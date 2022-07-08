//
//  SecondViewController.swift
//  Netflix
//
//  Created by Seokjune Hong on 2022/07/05.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var bannerImageView: UIImageView!
    @IBOutlet weak var posterImageView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bannerImageView.image = UIImage(named: "movie\(Int.random(in: 1...5))")
        bannerImageView.layer.cornerRadius = 30
        bannerImageView.layer.borderWidth = 5
        bannerImageView.layer.borderColor = UIColor.blue.cgColor
        
        posterImageView.text = "택시운전사"
        posterImageView.backgroundColor = .lightGray
        posterImageView.textColor = UIColor.red
        posterImageView.font = UIFont.boldSystemFont(ofSize: 30)
        

    }
    
    
    @IBAction func resultButtonClicked(_ sender: UIButton) {
        bannerImageView.image = UIImage(named: "movie\(Int.random(in: 1...5))")
    }
    
}
