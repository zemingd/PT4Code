package main

import (
	"fmt"
)

func main() {
	m := map[string]int{"AC": 0, "WA": 0, "TLE": 0, "RE": 0}

	var n int
	fmt.Scanf("%d", &n)
	s := make([]string, n)
	for i := 0; i < len(s); i++ {
		fmt.Scanf("%s", &s[i])
	}

	for i := 0; i < len(s); i++ {
		switch s[i] {
			case "AC": 
				m["AC"] = m["AC"] + 1
			case "WA": 
				m["WA"] = m["WA"] + 1
			case "TLE": 
				m["TLE"] = m["TLE"] + 1
			case "RE": 
				m["RE"] = m["RE"] + 1
			default:

		}
	}

	ansPrint(m)
}

func ansPrint(m map[string]int) {
	for k, v := range m {
		fmt.Println(k, "x", v)
	}
}
