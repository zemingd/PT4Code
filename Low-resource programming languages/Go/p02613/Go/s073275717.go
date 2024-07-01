package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	s := make([]string, n)
	result := map[string]int{"AC": 0, "WA": 0, "TLE": 0, "RE": 0}

	for i:=0; i<len(s); i++{
		fmt.Scan(&s[i])
		switch s[i] {
		case "AC" :
			result["AC"]++
		case "WA":
			result["WA"]++
		case "TLE":
			result["TLE"]++
		case "RE":
			result["RE"]++
		}
	}

	fmt.Printf("AC x %d\n", result["AC"])
	fmt.Printf("WA x %d\n", result["WA"])
	fmt.Printf("TLE x %d\n", result["TLE"])
	fmt.Printf("RE x %d\n", result["RE"])

}