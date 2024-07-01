package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)

	count := map[string]int{}
	for i := 0; i < n; i++ {
		var s string
		fmt.Scanf("%s", &s)
		count[s]++
	}

	fmt.Printf("AC x %d\n", count["AC"])
	fmt.Printf("WA x %d\n", count["WA"])
	fmt.Printf("TLE x %d\n", count["TLE"])
	fmt.Printf("RE x %d\n", count["RE"])
}
