package main

import (
	"fmt"
)

func main() {
	var (
		n, a, max uint
		x, y      uint
	)
	fmt.Scan(&n)

	statements := make([][][2]uint, n)
	for i := uint(0); i < n; i++ {
		fmt.Scan(&a)

		s := make([][2]uint, a)
		for j := uint(0); j < a; j++ {
			fmt.Scan(&x, &y)
			s[j][0] = x - 1
			s[j][1] = y
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

			for _, s := range statements[i] {
				_x, _y := s[0], s[1]
				if (bit>>_x)&1 != _y {
					ok = false
					break
				}
			}

			if !ok {
				break
			}
		}

		if ok && cnt > max {
			max = cnt
		}
	}

	fmt.Println(max)
}
