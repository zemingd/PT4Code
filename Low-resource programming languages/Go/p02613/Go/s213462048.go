package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)
	tests := make([]string, 10^5, 10^5)
	i := 0
	for i < n {
		fmt.Scanf("%s", &tests[i])
		i = i + 1
	}

	m := map[string]int{"AC": 0, "WA": 0, "TLE": 0, "RE": 0}
	for _, s := range tests {
		m[s] = m[s] + 1
	}
	fmt.Printf("AC x %d\n", m["AC"])
	fmt.Printf("WA x %d\n", m["WA"])
	fmt.Printf("TLE x %d\n", m["TLE"])
	fmt.Printf("RE x %d\n", m["RE"])
}
