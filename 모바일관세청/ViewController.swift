//
//  ViewController.swift
//  Korean_Custom_Service
//
//  Created by 원종우 on 2023/04/23.
//

import UIKit
import LocalAuthentication

var images = ["디지털 정부 서비스.jpeg", "KCW.jpeg"]
var func_images = ["기능1.png", "기능2.png", "기능3.png"]
class ViewController: UIViewController {
    
    
    
    
    @IBOutlet var func_img_view: UIImageView!
    
    @IBOutlet var func_page_control: UIPageControl!
    
    @IBOutlet var imgView: UIImageView!
    
    @IBOutlet var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pageControl.numberOfPages = images.count
        
        pageControl.currentPage = 0
        
        pageControl.pageIndicatorTintColor = UIColor.gray
        pageControl.pageIndicatorTintColor = UIColor.black
        
        imgView.image = UIImage(named: images[0])
        
        func_page_control.numberOfPages = func_images.count
        
        func_page_control.currentPage = 0
        
        func_page_control.pageIndicatorTintColor = UIColor.gray
        func_page_control.pageIndicatorTintColor = UIColor.black
        
        func_img_view.image = UIImage(named: func_images[0])
    }

    
    @IBAction func pageChange(_ sender: UIPageControl) {
        imgView.image = UIImage(named: images[pageControl.currentPage])
    }
    
    
    @IBAction func func_pageChange(_ sender: UIPageControl) {
        func_img_view.image = UIImage(named: func_images[func_page_control.currentPage])
    }
    

    @IBAction func URL_Naver_Blog(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "http://blog.naver.com/PostView.naver?blogId=k_customs&logNo=223071668692&redirect=Dlog")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func URL_Facebook(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://www.facebook.com/ftacustoms?paipv=0&eav=AfY4je0jmZJFQqs9EIMDv3rOTu50DCdnUEswB58GIvvl8arg8vpzbM2y64Jl7Cp2flA&_rdr")! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func URL_Twitter(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://twitter.com/koreacustoms")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func URL_KCS(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://www.customs.go.kr/kcs/main.do")! as URL, options: [:], completionHandler: nil)
    }
    
  
    
    
}

