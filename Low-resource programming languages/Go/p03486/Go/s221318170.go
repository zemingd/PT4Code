package main

import (
	"fmt"
	"math"
	"sort"
)

func main() {
	var s, t string
	fmt.Scan(&s, &t)

	x := []rune(s)
	y := []rune(t)

	sort.Slice(x, func(i, j int) bool {
		return x[i] > x[j]
	})
	sort.Slice(y, func(i, j int) bool {
		return y[i] > y[j]
	})

	for i := 0; i < int(math.Min(float64(len(x)), float64(len(y)))); i++ {
		if x[i] < y[i] {
			fmt.Println("Yes")
			return
		} else if x[i] > y[i] {
			fmt.Println("No")
			return
		}
	}

	if len(x) < len(y) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
