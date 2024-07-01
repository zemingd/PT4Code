package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	a := map[string]int{"AC": 0, "WA": 0, "TLE": 0, "RE": 0}
	order := []string{"AC", "WA", "TLE", "RE"}
	for i := 0; i < n; i++ {
		var in string
		fmt.Scan(&in)
		a[in]++
	}

	for _, item := range order {
		fmt.Println(item, "×", a[item])
	}
}
