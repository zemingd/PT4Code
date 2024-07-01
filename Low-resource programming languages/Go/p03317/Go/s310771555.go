package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scanf("%d %d\n", &n, &k)
	var min int
	for i := 0; i < n; i++ {
		var tmp int
		fmt.Scanf("%d", &tmp)
		if tmp == 1 {
			min = i // 最小1のばしょを取得
		}
	}
	if min+1 > n/2 {
		// 左右反転する
		min = n - 1 - min
	}
	res := 0
	res += (min + 1) / (k - 1)            // 0
	min = min + ((min + k - 1) % (k - 1)) // 0 + 2
	res += (n - min) / (k - 1)            // 0

	fmt.Printf("%d\n", res)
}
