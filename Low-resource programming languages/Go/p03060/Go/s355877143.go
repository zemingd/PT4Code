package main

import (
	"fmt"
	"math"
)

type Gem struct {
	Cost  int
	Value int
}

func main() {
	var n int
	fmt.Scan(&n)

	var Gems = make([]Gem, n)

	for i := 0; i < n; i++ {
		var v int
		fmt.Scan(&v)
		Gems[i].Value = v
	}

	for i := 0; i < n; i++ {
		var c int
		fmt.Scan(&c)
		Gems[i].Cost = c
	}

	var bestBenefit = 0
	for i := 0; i < int(math.Pow(2.0, float64(n))); i++ {
		var j = 0
		var temp = i
		var sum = 0
		for temp > 0 {
			if temp%2 == 1 {
				sum += (Gems[j].Value - Gems[j].Cost)
			}
			j++
			temp = temp / 2
		}

		if bestBenefit < sum {
			bestBenefit = sum
		}
	}

	fmt.Println(bestBenefit)
}
