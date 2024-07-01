package main

import (
	"fmt"
	"math"
)

func main() {
	var n,t int
	fmt.Scan(&n,&t)

	ans := 1001
	for i := 0; i < n; i++{
		var c,ti int
		fmt.Scan(&c,&ti)

		if ti <= t {
			ans = int(math.Min(float64(ans),float64(c)))
		}
	}
	if ans > 1000 {
		fmt.Println("TLE")
	} else {
		fmt.Println(ans)
	}
}