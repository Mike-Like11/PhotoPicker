//
//  ViewController.swift
//  PhotoPicker
//
//  Created by Student on 11.03.2021.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    @IBOutlet weak var img: UIImageView!
    private var tapButton = UIButton()
    var imagePicker = UIImagePickerController()
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Counter"
        imagePicker.delegate=self
       
        view.addSubview(tapButton)
        tapButton.backgroundColor = .blue
               tapButton.setTitle("TAP", for: .normal)
               tapButton.translatesAutoresizingMaskIntoConstraints = false
               
               NSLayoutConstraint.activate([
                   
                   tapButton.topAnchor.constraint(equalTo: view.centerYAnchor, constant: 30),
                   tapButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
               ])
        // Do any additional setup after loading the view.
    }
    override func  didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func onClickPickerImage(_ sender:Any){
        imagePicker.sourceType = .photoLibrary
        imagePicker.allowsEditing = true
        present(imagePicker, animated: true, completion: nil)
    }
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            
        }

}

