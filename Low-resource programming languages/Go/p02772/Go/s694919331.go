package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	a := make([]int, n)

	for i := 0; i < n; i++ {
		var tmp int
		// fmt.Scanf関数
		// &をつけて、変数からポインタを抽出した状態で使う
		// 第一引数の方には、%dや%sのように、型を指定
		fmt.Scanf("%d", &tmp)
		if tmp%2 == 0 {
			a = append(a, tmp)
		}
		//fmt.Scan(&a[i])
	}

	ans := "APPROVED"
	for _, m := range a {
		if m%3 != 0 && m%5 != 0 {
			ans = "DENIED"
			break
		}
	}

	fmt.Println(ans)

}
