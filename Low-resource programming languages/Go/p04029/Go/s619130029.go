package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)

	candies := ((N + 1) * N) / 2
	fmt.Println(candies)
}
