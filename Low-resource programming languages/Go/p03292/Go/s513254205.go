package main

import (
	"fmt"
	"math"
)

func main() {
	var a1, a2, a3 float64
	var sl []int
	fmt.Scan(&a1, &a2, &a3)

	sl = append(sl, int(math.Abs(a1-a2) + math.Abs(a2-a3)))
	sl = append(sl, int(math.Abs(a2-a3) + math.Abs(a3-a1)))
	sl = append(sl, int(math.Abs(a3-a1) + math.Abs(a1-a2)))

	min := 300
	for _, v := range sl{
		if v < min {
			min = v
		}
	}
	fmt.Println(min)
}
