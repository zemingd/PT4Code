package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	ps := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&ps[i])
	}

	p0 := ps[0]
	p1 := 0
	p2 := 0
	cnt1 := 0
	cnt2 := 0
	for i := 1; i < n-1; i++ {
		p1 = ps[i]
		p2 = ps[i+1]

		if p1 < p0 {
			cnt1++
		}

		if p1 < p2 {
			cnt1++
		}

		if cnt1 == 1 {
			cnt2++
			cnt1 = 0
		}

		p0 = ps[i]
	}

	fmt.Print(cnt2)
}
