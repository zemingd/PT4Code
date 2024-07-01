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

	result := float64(0)
	for i, u := range us {
		if i == 0 {
			result = (u + us[i+1]) / 2
			continue
		}

		if i+1 == n {
			result = (result + u) / 2
			break
		}

		result = (result + us[i+1]) / 2
	}

	fmt.Print(result)

}
