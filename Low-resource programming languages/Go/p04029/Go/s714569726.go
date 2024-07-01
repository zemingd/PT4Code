package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)

	sum := 0
	for i := 1; i <= N; i++ {
		sum += i
	}
	fmt.Println(sum)
}