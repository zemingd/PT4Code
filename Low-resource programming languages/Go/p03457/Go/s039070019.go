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
		dist := math.Abs(x-currX) + math.Abs(y-currY)
		dt := t - currT

		if dt < dist {
			fmt.Println("NO")
			return
		}
		if int(dt)&1 != int(dist)&1 {
			fmt.Println("No")
			return
		}

		currT = t
		currX = x
		currY = y
	}
	fmt.Println("Yes")
}
