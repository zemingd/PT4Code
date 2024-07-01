package main

import (
	"fmt"
	"math"
)

func main() {
	var n, t0, x0, y0, t1, x1, y1 int
	fmt.Scan(&n)

	for i := 0; i < n; i++ {
		fmt.Scan(&t1, &x1, &y1)
		if d, t := int(math.Abs(float64(x1-x0)) + math.Abs(float64(y1-y0))), t1-t0;
		d > t || d%2 != t%2 {
			fmt.Println("No")
			return
		}
		t0 = t1; x0 = x1; y0 = y1
	}

	fmt.Println("Yes")
}