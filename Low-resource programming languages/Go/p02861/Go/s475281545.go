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
		towns[i] = town{x: x, y: y, i: i}
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
		traced := []town{towns[i]}
		factorialSum(towns[i], others, traced)
	}
	return sum / float64(factorial(n))
}

func factorialSum(prev town, remain []town, traced []town) {
	if len(remain) == 0 {
		for i := 0; i < len(traced)-1; i++ {
			sum += traced[i].distance(traced[i+1])
		}
		return
	}
	for i := 0; i < len(remain); i++ {
		var others []town
		for j := 0; j < len(remain); j++ {
			if i != j {
				others = append(others, remain[j])
			}
		}
		newtraced := append(traced, remain[i])
		factorialSum(remain[i], others, newtraced)
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
	i int
}

func (t town) distance(u town) float64 {
	return math.Sqrt(float64((t.x-u.x)*(t.x-u.x) + (t.y-u.y)*(t.y-u.y)))
}
