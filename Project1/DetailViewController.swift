//
//  DetailViewController.swift
//  Project1
//
//  Created by Łukasz Rajczewski on 27/12/2020.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    
    var selectedImage: String?
    var amountOfPictures: Int?
    var imageNumber: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let number = imageNumber, let amount = amountOfPictures {
            title = "Picture \(number) of \(amount)"
        }
        navigationItem.largeTitleDisplayMode = .never
        
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false 
    }
    
}
