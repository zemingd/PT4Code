package main

import (
	"fmt"
)

func main() {
	var n, y int
	fmt.Scan(&n, &y)
	y /= 1000
	for i := 0; i <= n; i++ {
		ii = i * 10
		if ii > y {
			break
		}
		for j := 0; j <= n-i; j++ {
			jj = j * 5
			if ii+jj > y {
				break
			}
			k := n - i - j
			if ii+jj+k == y {
				fmt.Println(i, j, k)
				return
			}
		}
	}
	fmt.Println(-1, -1, -1)
}
