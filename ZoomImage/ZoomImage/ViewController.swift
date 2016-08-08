//
//  ViewController.swift
//  ZoomImage
//
//  Created by 横山祥平 on 2016/08/08.
//  Copyright © 2016年 Shohei. All rights reserved.
//

import UIKit

//http://yoshiminu.tumblr.com/post/50149137374/uiscrollview%E3%81%A7%E3%82%BA%E3%83%BC%E3%83%A0%E5%8F%AF%E8%83%BD%E3%81%AAuiimage%E3%81%AE%E3%82%B9%E3%83%A9%E3%82%A4%E3%83%89%E3%83%93%E3%83%A5%E3%83%BC%E3%83%AF%E3%83%BC%E3%82%92%E3%81%A4%E3%81%8F%E3%82%8B


class ViewController: UIViewController {
    
    var scrollView = UIScrollView()
    let imageView = UIImageView(image: UIImage(named: "Image1"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        scrollView.frame = view.frame
        scrollView.minimumZoomScale = 1
        scrollView.maximumZoomScale = 2
        scrollView.delegate = self
        view.addSubview(scrollView)
        
        imageView.frame = view.frame
        scrollView.addSubview(imageView)
    }
}

extension ViewController: UIScrollViewDelegate {
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        return imageView
    }
}

