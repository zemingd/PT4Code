package main

import "fmt"

func main() {
	var k, x int
	fmt.Scan(&k)
	fmt.Scan(&x)

	min := x - (k - 1)
	max := x + (k - 1)
	for i := min; i < max; i++ {
		fmt.Printf("%d ", i)
	}
	fmt.Println(max)
}
