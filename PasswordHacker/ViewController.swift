//
//  ViewController.swift
//  PasswordHacker
//
//  Created by 曽根大輔 on 2018/02/04.
//  Copyright © 2018年 曽根大輔. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //結果表示用ラベル
    @IBOutlet var resultLabel1: UILabel! //右から１番目
    @IBOutlet var resultLabel2: UILabel! //右から２番目
    @IBOutlet var resultLabel3: UILabel! //右から3番目
    @IBOutlet var resultLabel4: UILabel! //右から4番目
    
    //カウント用ラベル
    @IBOutlet var countLabel: UILabel!
    
    //秘密のパスワード
    var password: Int = 1234

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func start(){
        for i in 0...9999{
            //解析中の文字を表示する
            countLabel.text = String(i)
            
            //処理を0.00005秒待機する
            RunLoop.main.run(until:   Date(TimeIntervalSinceNow:0.00005))
            
            
            //passwordとiが一致したら...
            if password == i{
                
              //passwordの桁ごとの数字を入れる配列
                var digit = [Int]()
                
                for _ in 0...3{
                   digit.append(password % 10) //j桁目の数字
                   password = password / 10
                }
                resultLabel1.text = String(digit[0])
                resultLabel2.text = String(digit[1])
                resultLabel3.text = String(digit[2])
                resultLabel4.text = String(digit[3])
                
                
                
                
            }
        }


    }
    
    @IBAction func reset(){
        //passwordを1234に再設定
        password = 1234
        
        //coyntLabelの表示を元に戻す
        countLabel.text = "「Start」ボタンをを押して解析開始"
        
        // ラベルの表示を全て0に戻す
        resultLabel1.text = "0"
        resultLabel2.text = "0"
        resultLabel3.text = "0"
        resultLabel4.text = "0"
        
        
        
    }
    


}
