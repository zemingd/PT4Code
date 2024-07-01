package main

import "fmt"

func main() {
	var n int
	fmt.Scanf("%d", &n)

	ret := map[string]int{
		"AC":  0,
		"WA":  0,
		"TLE": 0,
		"RE":  0,
	}
	for i := 0; i < n; i++ {
		var s string
		fmt.Scanf("%s", &s)
		ret[s]++
	}

	fmt.Printf("%s x %d\n", "AC", ret["AC"])
	fmt.Printf("%s x %d\n", "WA", ret["WA"])
	fmt.Printf("%s x %d\n", "TLE", ret["TLE"])
	fmt.Printf("%s x %d\n", "RE", ret["RE"])
}
