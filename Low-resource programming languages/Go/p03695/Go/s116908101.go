package main

import (
	"fmt"
)

func main() {
	var n, c int
	var m = make(map[int]int)

	fmt.Scan(&n)
	t := make([]int, n)

	for i := 0; i < n; i++ {
		fmt.Scan(&t[i])

		// 3200以上は後で考える
		if 3200 <= t[i] {
			c++
		} else {
			for j := 0; j < 8; j++ {
				if 400*j <= t[i] && t[i] < 400*(j+1) {
					_, isExist := m[j]
					if !isExist {
						m[j] = 1
					}
				}
			}
		}
	}

	// 3200以上がいないなら終わり
	// 最大値
	max := len(m) + c
	if 8 < max {
		max = 8
	}

	// 最小値
	min := len(m)
	if 0 == len(m) {
		min = 1
	}

	fmt.Println(min, max)
}
