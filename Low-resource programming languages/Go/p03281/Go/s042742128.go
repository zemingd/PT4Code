package main

import (
	"fmt"
)

func main() {
	var n, cnt, num int
	fmt.Scan(&n)
	for i := 1; i <= n; i += 2 {
		cnt = 0
		for j := 1; j <= n; j++ {
			if i%j == 0 {
				cnt++
			}
		}
		if cnt == 8 {
			num++
		}
	}
	fmt.Println(num)
}
