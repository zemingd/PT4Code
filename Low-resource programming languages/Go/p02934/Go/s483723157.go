package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)

	sum := 0.0
	for i := 0; i < N; i++ {
		var num float64
		fmt.Scan(&num)
		sum += 1 / num
	}

	fmt.Println(1.0 / sum)
}
