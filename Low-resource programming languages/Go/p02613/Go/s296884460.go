package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	res := map[string]int{}
	for i := 0; i < n; i++ {
		var a string
		fmt.Scan(&a)
		res[a]++
	}
	fmt.Printf("AC x %v\n", res["AC"])
	fmt.Printf("WA x %v\n", res["WA"])
	fmt.Printf("TLE x %v\n", res["TLE"])
	fmt.Printf("RE x %v\n", res["RE"])
}