package main

import (
	"fmt"
)

func main() {
	var N, cnt int
	fmt.Scan(&N)
	for i := 1; i <= N; i++ {
		if i%2 == 0 {
			continue
		}
		y := 0
		for j := 1; j <= i; j++ {
			if i%j == 0 {
				y++
			}
			if y > 8 {
				break
			}
		}
		if y == 8 {
			cnt++
		}
	}
	fmt.Println(cnt)
}