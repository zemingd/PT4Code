package main

import "fmt"

func main() {
	var a, b, x int
	fmt.Scanf("%d %d %d", &a, &b, &x)

	result := b/x - a/x
	if a%x == 0 {
		result++
	}
	fmt.Println(result)
}