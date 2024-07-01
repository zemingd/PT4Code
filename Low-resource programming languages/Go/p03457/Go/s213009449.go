package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scan(&n)

	var t int
	var x, y float64
	t, x, y = 0, 0.0, 0.0 // initialized

	var tNext int
	var xNext, yNext float64

	flag := "Yes"
	for i := 0; i < n; i++ {
		fmt.Scan(&tNext, &xNext, &yNext)

		// 残り時間
		T := tNext - t
		// 目的地までの距離（マンハッタン距離）
		dist := math.Abs(xNext-x) + math.Abs(yNext-y)

		// 残り時間より必要な移動距離のほうが長い
		if T < int(dist) {
			flag = "No"
		}
		// 着いてからのあまり時間が偶数であれば行き帰りできる
		if (T-int(dist))%2 == 1 {
			flag = "No"
		}
		// updated
		t, x, y = tNext, xNext, yNext
	}
	fmt.Println(flag)

}
