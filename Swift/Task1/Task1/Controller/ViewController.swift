//
//  ViewController.swift
//  Task1
//
//  Created by 安田誠 on 2021/06/10.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 画面初期化処理を書く
        print("画面のロード完了")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // 画面表示前の処理を書く
        print("画面表示直前")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // 画面表示直後の処理を書く
        print("画面表示直後")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // 画面非表示直前の処理を書く
        print("画面非表示直前")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        // 画面非表示直後の処理を書く
        print("画面非表示直後")
    }
}
