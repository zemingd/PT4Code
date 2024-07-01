package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scan(&n)
	pos := make([][]float64, n)
	for i := 0; i < n; i++ {
		pos[i] = make([]float64, 2)
		for j := 0; j < 2; j++ {
			fmt.Scan(&pos[i][j])
		}
	}

	var sum float64
	for i := 0; i < n; i++ {
		for j := 0; j < n; j++ {
			sum += math.Sqrt((pos[i][0]-pos[j][0])*(pos[i][0]-pos[j][0]) + (pos[i][1]-pos[j][1])*(pos[i][1]-pos[j][1]))
		}
	}

	fmt.Println(sum / float64(n))
}
