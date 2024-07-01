package main

import "fmt"

func main() {
	var a, b int
	fmt.Scanf("%d %d", &a, &b)
	max := 0
	if max < a + b {
		max = a + b
	}
	if max < a + (a-1) {
		max = a + (a-1)
	}
	if max < b + (b-1) {
		max = b + (b-1)
	}
	fmt.Println(max)
}