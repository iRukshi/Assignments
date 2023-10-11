//
//  ViewController.swift
//  ImageViewerSwiftApp
//
//  Created by Rukshi Chauhan on 10/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    private var gallery = Gallery()
    var selectedRow = Int()
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        activityIndicator.hidesWhenStopped = true
        activityIndicator.color = UIColor.red
        pickerView.setValue(UIColor.white, forKey: "textColor")
        setImage()
    }
    
    func setImage(){
        selectedRow = pickerView.selectedRow(inComponent: 0)
        let selectedImage = Array(gallery.imageDic.values)[selectedRow]
        loadImage(urlStr: selectedImage)
    }
    
    func loadImage(urlStr:String){
        activityIndicator.startAnimating()
        Service.shared.getImage(urlString: urlStr) { data in
            if let data = data {
                DispatchQueue.main.async { [unowned self] in
                    self.imageView.image = UIImage(data: data)
                    self.activityIndicator.stopAnimating()
                }
            }
        }
    }


    @IBAction func handleSwipe(_ sender: UISwipeGestureRecognizer) {
        if sender.direction == .right {
            if selectedRow == 0 {
                selectedRow = gallery.imageDic.count - 1 // access last element if first element selected
            }else {
                selectedRow -= 1
            }
        }
        else if sender.direction == .left {
            if selectedRow == gallery.imageDic.count - 1 {
                selectedRow = 0 // access first element if last element selected
            }else {
                selectedRow += 1
            }
        }
        pickerView.selectRow(selectedRow, inComponent: 0, animated: true)
        setImage()
    }
}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return gallery.imageDic.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let allDictionaryKeys = Array( gallery.imageDic.keys )
        return String(describing: allDictionaryKeys[row])
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        setImage()
    }
}
