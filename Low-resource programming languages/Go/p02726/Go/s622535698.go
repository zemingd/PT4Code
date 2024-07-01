package main

import (
	"fmt"
)

func main() {
	var n, x, y int
	fmt.Scan(&n, &x, &y)
	ans := make([]int, n-1)

	for i := 1; i < n; i++ {
		for j := i + 1; j <= n; j++ {
			d := j - i
			if i <= x {
				if y <= j {
					d -= y - x - 1
				} else if j > x {
					if y-j+1 < j-x {
						d -= j - x
						d += y - j + 1
					}
				}
			} else if i < y && y <= j {
				if i-x+1 < y-i {
					d -= y - i
					d += i - x + 1
				}
			}
			ans[d-1]++
		}
	}

	for _, a := range ans {
		fmt.Println(a)
	}
}
