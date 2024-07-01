package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	s := make(map[string]int, n)
	for i := 0; i < n; i++ {
		var judge string
		fmt.Scan(&judge)

		s[judge]++
	}

	fmt.Printf("AC x %d\n",s["AC"])
	fmt.Printf("WA x %d\n",s["WA"])
	fmt.Printf("TLE x %d\n",s["TLE"])
	fmt.Printf("RE x %d\n",s["RE"])

}

