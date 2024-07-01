// https://atcoder.jp/contests/abc133/tasks/abc133_c
package main

import (
	"fmt"
)

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	var L, R int

	fmt.Scan(&L, &R)

	ans := 2019

	for i := L; i < min(R, L+2019); i++ {
		for j := i + 1; j <= min(R, L+2019); j++ {
			ans = min(ans, (i%2019)*(j%2019)%2019)
			//fmt.Printf("min = %v\n")
			// 割り切れたのなら、これ以上小さくならない
			if ans == 0 {
				break
			}
		}
	}

	fmt.Println(ans)
}
