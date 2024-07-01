package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)

	var us []float64
	for i := 0; i < n; i++ {
		var u float64
		fmt.Scan(&u)
		us = append(us, u)
	}

	sort.Float64s(us)

	result := (us[0] + us[1]) / 2
	for i := 2; i < n; i++ {
		result = (result + us[i]) / 2
	}

	fmt.Print(result)

}
