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

	result := 0
	for i, u := range us {
		if i == 0 {
			result = (u + us[i+1]) / 2
			continue
		}

		if i+1 == n {
			result = (result + u) / 2
		}

		result = (result + us[i+1]) / 2
	}

	fmt.Print(result)

}
