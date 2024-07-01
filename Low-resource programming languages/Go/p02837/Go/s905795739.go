package main

import (
	"fmt"
)

func main() {
	var n, a, x, y, max uint8
	fmt.Scan(&n)

	statements := make([]statement, n)
	for i := uint8(0); i < n; i++ {
		fmt.Scan(&a)

		s := make(statement)
		for j := uint8(0); j < a; j++ {
			fmt.Scan(&x, &y)
			s[x-1] = y
		}
		statements[i] = s
	}

	for bit := uint8(0); bit < 1<<n; bit++ {
		cnt := counter(bit)
		ok := true

		for i := uint8(0); i < n; i++ {
			if bit&(1<<i) == 0 {
				continue
			}

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

type statement map[uint8]uint8

func counter(x uint8) uint8 {
	if x == 0 {
		return 0
	}
	return counter(x>>1) + (x & 1)
}
