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
		min = n - 1 - min
	}
	res := 0
	res++
	// 7 3 2 4 5 1 6 8
	res += (min + 1) / (k - 1)                      // 1
	min = min + (k - 1) - ((min + k - 1) % (k - 1)) // 1
	res += (n - min) / (k - 1)

	fmt.Printf("%d\n", res)
}
