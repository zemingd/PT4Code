package main

import "fmt"

func main() {
	var n, m int
	fmt.Scan(&n)
	fmt.Scan(&m)

	var lma, rmin int

	rmin = 9999999999999

	for index := 0; index < m; index++ {
		var l, r int
		fmt.Scan(&l)
		fmt.Scan(&r)

		if lma < l {
			lma = l
		}
		if rmin > r {
			rmin = r
		}
	}

	fmt.Println(rmin - lma + 1)
}
