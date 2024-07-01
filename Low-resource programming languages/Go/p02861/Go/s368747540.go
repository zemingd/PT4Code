package main

import (
	"fmt"
	"math"
)

func fact(x int) int {
	if x == 0 {
		return 1
	} else {
		return x * fact(x-1)
	}
}

func main() {
	var n int
	fmt.Scan(&n)
	listx := make([]int, n)
	listy := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&listx[i], &listy[i])
	}

	total := 0.0
	ans := 0.0
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			dis := math.Sqrt(math.Pow(float64(listx[j]-listx[i]), 2) + math.Pow(float64(listy[j]-listy[i]), 2))
			total += dis
		}
	}

	ans = total * 2 / float64(n)
	fmt.Println(ans)
}
