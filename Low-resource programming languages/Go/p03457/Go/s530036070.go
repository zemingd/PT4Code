package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scan(&n)

	var t, x, y float64
	currT, currX, currY := 0.0, 0.0, 0.0

	for i := 0; i < n; i++ {
		fmt.Scan(&t, &x, &y)
		times := math.Abs(currX-x) + math.Abs(currY-y)

		if t-currT < times {
			fmt.Println("NO")
			return
		}
		if int(t-currT)&1 != (int(times)&1) {
			fmt.Println("NO")
			return
		}

		currT = t
		currX = x
		currY = y
	}
	fmt.Println("YES")
}
