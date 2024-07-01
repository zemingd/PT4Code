package main

import (
	"fmt"
	"math"
)

func main() {
	var N, X, Y int
	fmt.Scanf("%d %d %d\n", &N, &X, &Y)
	result := make([]int, N+1)
	for i := 1; i < N; i++ {
		for j := i + 1; j <= N; j++ {
			x := X - i
			if x < 0 {
				x = -x
			}
			y := Y - j
			if y < 0 {
				y = -y
			}
			diff1 := j - i
			diff2 := x + 1 + y
			minDiff := int(math.Min(float64(diff1), float64(diff2)))
			fmt.Println(i, j, minDiff)
			result[minDiff]++
		}
	}
	for i := 1; i < N; i++ {
		fmt.Println(result[i])
	}
}
