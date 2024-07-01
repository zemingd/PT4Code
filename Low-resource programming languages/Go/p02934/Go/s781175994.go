package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	num1 := 0.0
	for i := 1; i <= n; i++ {
		var ai float64
		fmt.Scan(&ai)
		num1 += 1.0 / ai
	}
	fmt.Println(1.0 / num1)
}
