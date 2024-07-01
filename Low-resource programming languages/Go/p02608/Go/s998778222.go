package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)
	ret := exec(n)

	for i := 1; i <= n; i++ {
		fmt.Printf("%d\n", ret[i])
	}
}

func exec(n int) []int {
	max := sqrt(n)
	ret := make([]int, n+1)
	for x := 1; x < max; x++ {
		for y := 1; y < max; y++ {
			for z := 1; z < max; z++ {
				v := cal(x, y, z)
				if n >= v {
					ret[v]++
				}
			}
		}
	}
	return ret
}

func cal(x, y, z int) int {
	return x*x + y*y + z*z + x*y + x*z + y*z
}

func sqrt(p int) int {
	return int(math.Sqrt(float64(p)))
}
