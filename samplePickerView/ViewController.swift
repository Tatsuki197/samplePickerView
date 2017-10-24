//
//  ViewController.swift
//  samplePickerView
//
//  Created by Tatsuki Nakatsuka on 2017/10/23.
//  Copyright © 2017年 Tatsuki Nakatsuka. All rights reserved.
//

import UIKit


//1.プロトコル(手段、特定の部品をあやつる能力)を追加
class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {

    @IBOutlet weak var myPickerView: UIPickerView!
    
    //データを配列で用意する。（手段、特定の部品を操る能力）
    var teaList = ["ダージリン","アールグレイ","アッサム","オレンジペコ"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //teaList.append("緑茶")
        
        //5.指示を出しているのがViewControllerだと知らせる設定
        //self : 自分自身（ViewControllerのこと）
        //データーソース（表示するデータの設定支持する人）
        myPickerView.delegate = self
        
        //デリゲート（完治したイベントを委任する人、代理人（店長））
        myPickerView.delegate = self
        
        
        
    }

  
    //2.ピッカービューの数列を決定する
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1   //1列に指定
    }
    
    //3.ピッカービューの行数を決定する
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return teaList.count //4行に指定
    
    }
    //4.ピッカービューに表示する文字の設定。
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
     
        //今ピッカービューが何行目のデータを作ろうとしているか
        
        return teaList[row]
    }
    
    //(6.)選択された項目をデバックエリアに表示
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        //row:選択された項目が何行目か
       
        print(teaList[row])
        
        
        //Check ボタンが押された時発動するメソッド
        func tapCheck(_ sender: UIButton) {
        }
        //部品となるアラートを作成
        let alert = UIAlertController(
            title: "紅茶選択",
            message: teaList[row] + "飲みたい",
            preferredStyle: .alert)
        

        
        //アラートにOKボタンを追加
        //handler : OKボタンが押された時に行いたい処理を指定する場所。
        alert.addAction(UIAlertAction(
            title: "OK",
            style: .default,
            handler: {action in print("OK押されました")}))
       
     
        //アラートを表示する
        //completion: 動作が完了した後に発動される処理を指定する場所。
        present(alert, animated: false,
                completion: {() -> Void in print("アラート表示されました")})
        
        
        
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


