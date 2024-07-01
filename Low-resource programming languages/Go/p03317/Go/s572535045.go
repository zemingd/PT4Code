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
	if n < k {
		fmt.Printf("%d\n", 1)
		return
	}
	res := 0
	right := n - 1 - min + 1 // 1から, 1を含む右側の要素数
	if min > n/2 {
		// 右側から1にしていく
		if right < k {
			// kがrightより大きい場合
			res++
			min += right - k // minが変わる
		} else {
			res += right / (k - 1)
			if right%(k-1) != 0 {
				res++
			}
		}
		// 左側
		res += min / (k - 1)
		if min%(k-1) != 0 {
			res++
		}
	} else {
		// 左側から1にしていく
		if min+1 < k {
			// kがleftより大きい場合
			res++
			min = k // minが変わる
			right = n - 1 - min + 1
		} else {
			res += min / (k - 1)
			if min%(k-1) != 0 {
				res++
			}
		}
		// 右側
		res += right / (k - 1)
		if right%(k-1) != 0 {
			res++
		}
	}

	fmt.Printf("%d\n", res)
}
