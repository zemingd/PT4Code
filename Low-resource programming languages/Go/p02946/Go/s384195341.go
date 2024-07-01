package main

import "fmt"

func main() {
	var k, x int
	fmt.Scanln(&k, &x)

	length := (k - 1)
	min := (-1) * length
	max := length
	i := min

	for i <= max {
		fmt.Printf("%d ", x+i)
		i++
	}
	fmt.Printf("\n")
}