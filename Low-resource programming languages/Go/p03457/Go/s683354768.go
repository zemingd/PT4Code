package main

import (
	"fmt"
)

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func main() {
	var n, x, y, t, prevX, prevY, prevT int
	fmt.Scan(&n)

	for i := 0; i < n; i++ {
		fmt.Scan(&t, &x, &y)
		dx := abs(x - prevX)
		dy := abs(y - prevY)
		dt := t - prevT
		if dist := dx + dy; dt < dist || dist % 2 != dt % 2 {
			fmt.Println("No")
			return
		}
		prevX, prevY, prevT = x, y, t
	}
	fmt.Println("Yes")

}
