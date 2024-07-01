package main

import (
	"fmt"
	"math"
)

func main() {
	var x float64
	fmt.Scan(&x)
	cur := float64(100)
	var i int

	for {
		i++
		cur = math.Trunc(cur*1.01)
		if x <= cur{
			fmt.Println(i)
			return
		}

	}
}
