package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	var sum float32
	for i := 0; i < n; i++ {
		var a float32
		fmt.Scan(&a)

		sum += 1.0 / a
	}
	fmt.Println(1.0 / sum)
}
