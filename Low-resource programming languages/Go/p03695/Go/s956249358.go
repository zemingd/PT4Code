package main

import (
	"fmt"
	"math"
)

func main() {
	// Code for C - Colorful Leaderboard
	var N int
	fmt.Scanf("%d", &N)

	color := make(map[int]int, 9)
	var a int
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &a)
		if 1 <= a && a <= 399 {
			color[0]++
		} else if 400 <= a && a <= 799 {
			color[1]++
		} else if 800 <= a && a <= 1199 {
			color[2]++
		} else if 1200 <= a && a <= 1599 {
			color[3]++
		} else if 1600 <= a && a <= 1999 {
			color[4]++
		} else if 2000 <= a && a <= 2399 {
			color[5]++
		} else if 2400 <= a && a <= 2799 {
			color[6]++
		} else if 2800 <= a && a <= 3199 {
			color[7]++
		} else {
			color[8]++
		}
	}

	var count int
	for i := 0; i < 8; i++ {
		if color[i] > 0 {
			count++
		}
	}

	var min, max int
	min = int(math.Max(float64(count), 1))
	max = count + color[8]

	fmt.Println(min, max)
}
