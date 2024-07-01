package main

import "fmt"

func main() {
	var n, c, min, max int
	fmt.Scan(&n)

	var colors = make([]bool, 8)

	for i := 0; i < n; i++ {
		fmt.Scan(&c)

		ccode := -1
		switch {
		case 1 <= c && c <= 399:
			ccode = 0
		case 400 <= c && c <= 799:
			ccode = 1
		case 800 <= c && c <= 1199:
			ccode = 2
		case 1200 <= c && c <= 1599:
			ccode = 3
		case 1600 <= c && c <= 1999:
			ccode = 4
		case 2000 <= c && c <= 2399:
			ccode = 5
		case 2400 <= c && c <= 2799:
			ccode = 6
		case 2800 <= c && c <= 3199:
			ccode = 7
		case 3200 <= c:
			max++
		}

		if ccode != -1 && !colors[ccode] {
			colors[ccode] = true
			min++
			max++
		}
	}
	if min == 0 {
		fmt.Printf("%d %d\n", 1, max)
	} else {
		fmt.Printf("%d %d\n", min, max)
	}
}