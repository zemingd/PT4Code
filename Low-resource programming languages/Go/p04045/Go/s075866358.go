package main

import (
	"fmt"
)

func main() {
	var n, k int
	var d int
	fmt.Scan(&n, &k)
	//嫌いな数字は最小0から最大9のためスライス宣言は10まで
	flag := make([]bool, 10)
	for i := 0; i < k; i++ {
		fmt.Scan(&d)
		//ここで無視された値は初期値のfalseのままとなる
		flag[d] = true
	}
	var price int
	//値が存在しているかどうか
	for {
		//払うお金を代入最低金額は商品金額(n)
		price = n
		flagMin := true
		for flagMin && price > 0 {
			//一桁目のスライスの値が嫌いな数字の場合
			if flag[price%10] {
				flagMin = false
			}
			//一桁目を切り詰める
			//priceはint型のため小数点を切り捨てられる
			//最後は0になる
			price /= 10
		}
		//全桁嫌いな数字出なかった場合
		if flagMin {
			fmt.Println(n)
			break
		}
		//誤まっていた場合の払う金額カウントアップ
		n++
	}
}
