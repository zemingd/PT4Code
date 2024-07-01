package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)

	var us []int
	for i := 0; i < n; i++ {
		var u int
		fmt.Scan(&u)
		us = append(us, u)
	}

	sort.Sort(sort.IntSlice(us))

	result := float64(0)
	for i, u := range us {
		if i == 0 {
			result = (float64(u) + float64(us[i+1])) / 2
			continue
		}

		if i+1 == n {
			result = (result + float64(u)) / 2
			break
		}

		result = (result + float64(us[i+1])) / 2
	}

	fmt.Print(result)

}
