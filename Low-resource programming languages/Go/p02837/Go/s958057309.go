package main

import (
	"fmt"
)

func main() {
	var n, a, x, y, max int
	fmt.Scan(&n)

	statements := make([]statement, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a)

		s := make(statement)
		for j := 0; j < a; j++ {
			fmt.Scan(&x, &y)
			s[x-1] = y == 1
		}
		statements[i] = s
	}

	for bit := 0; bit < 1<<uint8(n); bit++ {
		var (
			checks    []int
			stt       = make(statement)
			conflicts bool
			cnt       int
		)

		for i := 0; i < n; i++ {
			if bit&(1<<uint8(i)) != 0 {
				checks = append(checks, i)
				stt[i] = true
			}
		}

		for len(checks) > 0 && !conflicts {
			cnt++
			i := checks[0]
			checks = checks[1:]

			for key, val := range statements[i] {
				v, ok := stt[key]
				if ok && v != val {
					conflicts = true
					break
				}

				if !ok {
					stt[key] = val
				}
				if !ok && val {
					checks = append(checks, key)
				}
			}
		}

		if !conflicts {
			max = Max(max, cnt)
		}
	}

	fmt.Println(max)
}

type statement map[int]bool

func Max(n ...int) int {
	max := n[0]
	for _, v := range n[1:] {
		if v > max {
			max = v
		}
	}
	return max
}
