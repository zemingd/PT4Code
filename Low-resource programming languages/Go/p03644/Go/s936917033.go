package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	var maxDivCounter int
	for i := 0; i < n; i++ {
		var counter = 0
		var x = i + 1

		for x%2 == 0 {
			x /= 2
			counter++
		}
		
		if maxDivCounter < counter {
			maxDivCounter = counter
		}
	}
	fmt.Println(maxDivCounter)
}
