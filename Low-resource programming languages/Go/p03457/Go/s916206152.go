package main

import (
	"fmt"
)

type step struct {
	t int
	x int
	y int
}

func main() {
	var n int
	var t, x, y int

	steps := []step{}

	fmt.Scan(&n)
	for i := 0; i < n; i++ {
		fmt.Scan(&t, &x, &y)
		steps = append(steps, step{t, x, y})
	}
	// fmt.Println(steps)

	test := func(steps []step) string {
		for _, s := range steps {
			if !(s.x+s.y <= s.t && (s.x+s.y)%2 == s.t%2) {
				return "No"
			}
		}
		return "Yes"
	}

	fmt.Println(test(steps))
}
