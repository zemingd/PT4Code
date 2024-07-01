package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)
	towns := make([]town, n)
	for i := 0; i < n; i++ {
		var x, y int
		fmt.Scanf("%d %d", &x, &y)
		towns[i] = town{x: x, y: y}
	}
	answer := averageLength(towns, n)
	fmt.Println(answer)
}

var sum float64

func averageLength(towns []town, n int) float64 {
	for i := 0; i < n; i++ {
		var others []town
		for j := 0; j < len(towns); j++ {
			if i != j {
				others = append(others, towns[j])
			}
		}
		factorialSum(towns[i], others)
	}
	return sum / float64(factorial(n))
}

// NG SLICE
// sum += prev.distance(remain[i])
// others := remain[:i]
// for j := i + 1; j < len(remain); j++ {
// 	others = append(others, remain[j])
// }

func factorialSum(prev town, remain []town) {
	if len(remain) == 0 {
		return
	}
	for i := 0; i < len(remain); i++ {
		sum += prev.distance(remain[i])
		var others []town
		for j := 0; j < len(remain); j++ {
			if i != j {
				others = append(others, remain[j])
			}
		}
		factorialSum(remain[i], others)
	}
}

func factorial(x int) int {
	if x == 1 {
		return x
	}
	return x * factorial(x-1)
}

type town struct {
	x int
	y int
}

func (t town) distance(u town) float64 {
	return math.Sqrt(float64((t.x-u.x)*(t.x-u.x) + (t.y-u.y)*(t.y-u.y)))
}
