package main

import (
	"fmt"
)

func main() {
	var n int
	var m string
	var counter = make([]int, 4)
	fmt.Scanln(&n)
	for i := 0; i < n; i++ {
		fmt.Scanln(&m)
		switch m {
		case "AC":
			counter[0]++
		case "WA":
			counter[1]++
		case "TLE":
			counter[2]++
		case "RE":
			counter[3]++
		}
	}
	fmt.Printf("AC x %d\n", counter[0])
	fmt.Printf("WA x %d\n", counter[1])
	fmt.Printf("TLE x %d\n", counter[2])
	fmt.Printf("RE x %d\n", counter[3])
}