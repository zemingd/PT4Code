package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	var p = make([]int, 4)
	for i := 0; i < n; i++ {
		var s string
		fmt.Scan(&s)
		switch s {
		case "AC":
			p[0]++
		case "WA":
			p[1]++
		case "TLE":
			p[2]++
		case "RE":
			p[3]++
		}
	}
	fmt.Println("AC x", p[0])
	fmt.Println("WA x", p[1])
	fmt.Println("TLE x", p[2])
	fmt.Println("RE x", p[3])
}
