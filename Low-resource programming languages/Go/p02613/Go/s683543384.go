package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)

	var AC, WA, TLE, RE int

	var result string

	for i := 0; i < N; i++ {
		fmt.Scan(&result)

		switch result {
		case "AC":
			AC++
		case "WA":
			WA++
		case "TLE":
			TLE++
		case "RE":
			RE++
		default:
		}
	}
	line := `AC x %d
WA x %d
TLE x %d
RE x %d
`
	fmt.Printf(line, AC, WA, TLE, RE)
}
