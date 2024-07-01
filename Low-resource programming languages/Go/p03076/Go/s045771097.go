package main

import (
	"fmt"
)

func main() {
	var min, minIdx, ans int

	min = 99
	m := make([]int, 5)
	for i := range m {
		fmt.Scan(&m[i])
		if m[i]%10 != 0 && m[i]%10 < min {
			min = m[i] % 10
			minIdx = i
		}
	}
	for i, v := range m {
		if i != minIdx {
			ans += v
			for ans%10 != 0 {
				ans++
			}
		}
	}
	ans += m[minIdx]
	fmt.Println(ans)
}
