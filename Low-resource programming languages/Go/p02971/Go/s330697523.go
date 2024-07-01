package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	var as []int
	max := 0
	max2 := 0
	for i := 0; i < n; i++ {
		var a int
		fmt.Scan(&a)
		as = append(as, a)

		if max < a {
			max = a
		}

		if max2 < a {
			if max > max2 {
				max2 = a
			}
		}
	}

	for i := 0; i < n; i++ {
		if as[i] != max {
			fmt.Println(max)
			continue
		}

		if as[i] != max2 {
			fmt.Print(max2)
		}
	}

}
