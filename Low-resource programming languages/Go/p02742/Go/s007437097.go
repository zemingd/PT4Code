package main

import (
	"fmt"
	"math"
)

func main() {
	var x,y int
	fmt.Scanf("%d %d", &x, &y)
	v := x * y % 2

	var ans int
	if v > 0 {
		ans = int(math.Ceil(float64(x * y / 2)))
	} else {
		ans = (x * y / 2) - 1
	}

	fmt.Println(ans)
}
