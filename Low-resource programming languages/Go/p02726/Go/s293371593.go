package main

import (
	"fmt"
	"math"
)

func main() {
	var (
		n int
		x int
		y int
	)
	fmt.Scan(&n,&x,&y)

	count := make(map[int]int, n)

	for i := 0; i < n-1; i++ {
		count[i] = 0
		fmt.Println(count)
	}

	for i := 1; i < n+1; i++ {
		for j := i + 1; j < n+1; j++ {
			d1 := x - i
			d2 := y - j
			shortd := math.Abs(float64(d1)) + math.Abs(float64(d2)) + 1
			d := j - i
			if (d > int(shortd)) {
				count[int(shortd)-1] += 1
			} else {
				count[d-1] += 1
			}
		}
		fmt.Println(count)
	}
	
	for _, c := range count {
		fmt.Println(c)
	}
}