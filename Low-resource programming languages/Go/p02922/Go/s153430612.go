package main

import "fmt"

func main() {
	var A int
	var B int

	fmt.Scanf("%d", &A)
	fmt.Scanf("%d", &B)

	count := 1
	remaining := B - A
	for remaining > 0 {
		remaining = remaining - (A - 1)
		count++
	}
	fmt.Println(count)
}
