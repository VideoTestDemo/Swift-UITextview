//
//  ViewController.swift
//  Lesson-06 UITextView
//
//  Created by Adam的Apple on 2024/4/4.
//

import UIKit

class ViewController: UIViewController,UITextViewDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        addTextView()
    }

    func addTextView() {
        //创建UITextView
        let textView = UITextView(frame: CGRect(x: 0, y: 0, width: 300, height: 200))
        //设置文本
        textView.text = "please input content"
        //设置文本颜色
        textView.textColor = .lightGray
        //设置字体
        textView.font = UIFont.systemFont(ofSize: 16)
        //居中显示
        textView.center = CGPoint(x: view.bounds.width/2, y: view.bounds.height/2)
        //设置代理
        textView.delegate = self
        //设置边框样式
        textView.layer.borderWidth = 1.0
        textView.layer.borderColor = UIColor.gray.cgColor
        textView.layer.cornerRadius = 0.5
        //添加到视图中
        view.addSubview(textView)
    }
    //UITextViewDelegate方法，编辑状态下调用
    func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
        if textView.text == "please input content" {
            textView.text = ""
            textView.textColor = .black
        }
        return true
    }
}

