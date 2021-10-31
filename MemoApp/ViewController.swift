//
//  ViewController.swift
//  MemoApp
//
//  Created by 小倉瑞希 on 2021/10/31.
//

//テスト用ね

import UIKit

class ViewController: UIViewController,UITextViewDelegate {
    
    @IBOutlet weak var textView: UITextView!
    
//    viewDidLoad読み込まれて表示されるまでの間に処理しておいてほしい内容
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.delegate = self
        
        let sceneDelegate = UIApplication.shared.connectedScenes.first?.delegate as! SceneDelegate
        textView.text = sceneDelegate.lastText
    }
    
//textviewでなにか変化が起きた時に処理する内容
    func textViewDidChange(_ textView: UITextView) {
        let sceneDelegate = UIApplication.shared.connectedScenes.first?.delegate as! SceneDelegate
        sceneDelegate.lastText = textView.text
    }

}

