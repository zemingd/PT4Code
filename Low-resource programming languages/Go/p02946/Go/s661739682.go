package main

import "fmt"

func main() {
	var k, x int
	_, _ = fmt.Scanf("%d %d", &k, &x)
	for i := x - k + 1; i < x + k; i++ {
		fmt.Printf("%d ", i)
	}
	fmt.Print("\n")
}