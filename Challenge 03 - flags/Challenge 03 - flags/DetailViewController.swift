//
//  DetailViewController.swift
//  Challenge 03 - flags
//
//  Created by Lucas da Silva Reis on 21/02/23.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = selectedImage
        
        navigationItem.largeTitleDisplayMode = .never
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
        
        if let imageLoad = selectedImage {
            imageView.image = UIImage(named: imageLoad)
        }
        
        view.backgroundColor = UIColor(red: 222/255, green: 215/255, blue: 202/255, alpha: 1)
    }
    
    @objc func shareTapped() {
        guard let image = imageView.image?.jpegData(compressionQuality: 0.8) else {
            print("No image found")
            return
        }
        
        let vc = UIActivityViewController(activityItems: [ selectedImage!, image], applicationActivities: [])
        
        vc.popoverPresentationController?.barButtonItem
        present(vc, animated: true)
    }

}
