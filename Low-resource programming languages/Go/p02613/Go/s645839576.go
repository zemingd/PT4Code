package main

import "fmt"

func main() {
	n := 0
	r := map[string]int{}
	fmt.Scan(&n)
	for i := 0; i < n; i++ {
		var s string
		fmt.Scan(&s)
		r[s]++
	}

	anss := [...]string{"AC", "WA", "TLE", "RE"}
	for _, ans := range anss {
		fmt.Println(ans, "x", r[ans])
	}
}
