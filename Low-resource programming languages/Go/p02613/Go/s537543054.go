package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	
	s := make(map[string]int, 4)
	
	tmp := ""
	for i := 0; i < n; i++ {
		fmt.Scan(&tmp)
		s[tmp]++
	}
	
	fmt.Printf("AC x %d\n", s["AC"])
	fmt.Printf("WA x %d\n", s["WA"])
	fmt.Printf("TLE x %d\n", s["TLE"])
	fmt.Printf("RE x %d\n", s["RE"])	
}