package main

import (
	"fmt"
)

func main() {
	var n, a, x, y, max uint
	fmt.Scan(&n)

	statements := make([]statement, n)
	for i := uint(0); i < n; i++ {
		fmt.Scan(&a)

		s := make(statement)
		for j := uint(0); j < a; j++ {
			fmt.Scan(&x, &y)
			s[x-1] = y
		}
		statements[i] = s
	}

	for bit := uint(0); bit < 1<<n; bit++ {
		var (
			cnt uint
			ok  = true
		)

		for i := uint(0); i < n; i++ {
			if bit&(1<<i) == 0 {
				continue
			}

			cnt++
			for _x, _y := range statements[i] {
				if (bit>>_x)&1 != _y {
					ok = false
				}
			}
		}

		if ok && cnt > max {
			max = cnt
		}
	}

	fmt.Println(max)
}

type statement map[uint]uint
