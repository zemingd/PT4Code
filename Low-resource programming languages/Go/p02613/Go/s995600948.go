package main

import (
	"fmt"
)

func main() {
	var n int
	var s string
	sign := map[string]int{"AC": 0, "WA": 0, "TLE": 0, "RE": 0}
	fmt.Scan(&n)
	for i := 0; i < n; i++ {
		fmt.Scan(&s)
		sign[s] += 1
	}
	fmt.Printf("AC x %d\n", sign["AC"])
	fmt.Printf("WA x %d\n", sign["WA"])
	fmt.Printf("TLE x %d\n", sign["TLE"])
	fmt.Printf("RE x %d\n", sign["RE"])
}
