package main

import "fmt"

func main() {
	// Code for E - Double Factorial
	var N int
	fmt.Scan(&N)

	var ans int
	var temp int = 10
	if N%2 == 0 {
		for {
			if temp > N {
				break
			}
			ans += N / temp
			temp *= 5
		}
		fmt.Println(ans)
	} else {
		fmt.Println("0")
	}
}
