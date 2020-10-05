//
//  PickImageNailsViewController.swift
//  Treatably
//
//  Created by Ívar Guðmundsson on 05/10/2020.
//  Copyright © 2020 Treatably. All rights reserved.
//

import UIKit

class PickImageNailsViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {

    
    @IBOutlet weak var img1: UIImageView!
    var imagePicker = UIImagePickerController()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        
    }
    @IBAction func choose(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        imagePicker.allowsEditing = true
        present(imagePicker, animated:true , completion: nil)
    }
    
    

}
extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]){
        if let image = info[UIImagePickerController.InfoKey.editedImage.rawValue] as? UIImage {
            img1.image = image;
        }
        dismiss(animated: true, completion: all(<#T##mask: SIMDMask<SIMD>##SIMDMask<SIMD>#>))
    
    }
}
