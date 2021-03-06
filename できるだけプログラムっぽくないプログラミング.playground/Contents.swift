//: できるだけプログラムっぽくないプログラミング.Playground
// # コンセプト
// - できる限り、日本人に優しい「日本語」を利用する。
// - 更に「絵文字」を利用してカラフルに味付け。

import UIKit

// Swiftの場合、予約語以外なら全般的に日本語は使える。
// 但し、絵文字が利用できる箇所は限られている為、注意。
typealias 文字列型 = String
let 普通に表示する = { print($0) }
let 繋げて表示する = { (配列: [文字列型]) -> Void in
    普通に表示する(配列.joined(separator: " "))
}

class 名言 {
    var 配列: [文字列型], 発言者: 文字列型
    // クラス内の「一つ目の」引数ラベルと関数名には絵文字が利用可能。
    // 但し、なぜか二つ目以降の引数ラベルに使用するとエラーとなるふしぎ。
    init(👉: [文字列型], 発言者の名前: 文字列型) {
        配列 = 👉
        発言者 = 発言者の名前
    }
    func 👄() {
        var 整形済み配列 = 配列
        整形済み配列.insert("「", at: 0)
        整形済み配列.append("」")
        繋げて表示する(整形済み配列)
    }
    func 👰() { 繋げて表示する(["　　　〜", 発言者]) }
}

// 以降、できる限りプログラムっぽくなくなるよう意識する。

let 名言その1 = 名言(👉:
        ["諦めなさい。", "貴方は 私みたいな",
         "気の強い女としか", "一緒になれない運命なんだから"],
                           発言者の名前: "家内"),
    名言その2 = 名言(👉:
        ["いってらっしゃい。", "元気に暮らしてよ！"],
                           発言者の名前:
        "家出に向かう筆者に当時4歳の長男が掛けてくれた言葉")

名言その1.👄()
名言その1.👰()

名言その2.👄()
名言その2.👰()
