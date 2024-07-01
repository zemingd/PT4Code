package main

import "fmt"

func main() {
	var n, m int
	fmt.Scan(&n, &m)

	var (
		minL = 1
		maxR = n
		l, r int
	)
	for i := 0; i < m; i++ {
		fmt.Scan(&l, &r)
		if l > minL {
			minL = l
		}
		if r < maxR {
			maxR = r
		}
	}
	fmt.Println(maxR - minL + 1)
}
