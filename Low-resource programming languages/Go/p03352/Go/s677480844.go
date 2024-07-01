package main

import (
	"fmt"
	"math"
)

func main() {
	var x int
	fmt.Scan(&x)
	
	ans := 1
	for j := 1; j < x; j++ {
		for k := 2; k < x; k++ {
			tmp := int(math.Pow(float64(j), float64(k)))
			if tmp > x {
				break
			}
			if ans < tmp {
				ans = tmp
			}
		}
	}
	fmt.Println(ans)
}