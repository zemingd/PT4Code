package main

import (
	"fmt"
	"math"
)

func main()  {
	var n int
	fmt.Scan(&n)

	p := make([]int, n)
	for i:=0; i<n; i++ {
		fmt.Scan(&p[i])
	}
	min := 30
	max := 0
	count := 0
	for i:=1; i<n-1; i++ {
		min = int(math.Min(float64(p[i-1]), math.Min(float64(p[i]), float64(p[i+1]))))
		max = int(math.Max(float64(p[i-1]), math.Max(float64(p[i]), float64(p[i+1]))))
		if min != p[i] && max != p[i] {
			count++
		}
	}
	fmt.Println(count)
}