//
//  ViewController.swift
//  GestureRecognizerTry
//
//  Created by Özcan Özdemir on 2.04.2024.
//

//
//  ViewController.swift
//  GestrureRecognizerAtil
//
//  Created by Özcan Özdemir on 2.04.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var myLabel = UILabel()
    var myImageView = UIImageView()
    var resimDeg = "bilgisayar"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ekranGenislik = view.frame.size.width
        
        // imageView
        myImageView.frame = CGRect(x: (ekranGenislik - 250) * 0.5, y: 150, width: 250, height: 200)
        myImageView.image = UIImage(named: "bilgisayar")
        view.addSubview(myImageView)
        
        //label
        myLabel.frame = CGRect(x: (ekranGenislik - 200) / 2, y: 450, width: 200, height: 40)
        //myLabel.layer.borderWidth = 0.1
        //myLabel.layer.cornerRadius = 10
        myLabel.textAlignment = .center
        view.addSubview(myLabel)
        
        
        myImageView.isUserInteractionEnabled = true
        let gR = UITapGestureRecognizer(target: self, action: #selector(changePic))
        myImageView.addGestureRecognizer(gR)
    }
    
    @objc func changePic() {
        if resimDeg == "bilgisayar" {
            resimDegistir(isim: resimDeg)
            resimDeg = "gozluk"
        }else if resimDeg == "gozluk" {
            resimDegistir(isim: resimDeg)
            resimDeg = "kulaklik"
        }else if resimDeg == "kulaklik" {
            resimDegistir(isim: resimDeg)
            resimDeg = "telefon"
        }else if resimDeg == "telefon" {
            resimDegistir(isim: resimDeg)
            resimDeg = "saat"
        }else if resimDeg == "saat" {
            resimDegistir(isim: resimDeg)
            resimDeg = "bilgisayar"
        }
    }
    
    func resimDegistir(isim:String) {
        myImageView.image = UIImage(named: "\(isim)")
        myLabel.text = isim
    }
}
