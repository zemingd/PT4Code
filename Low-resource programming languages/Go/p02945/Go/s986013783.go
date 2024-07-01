package main

import "fmt"

func main() {
	var a, b int
	_, _ = fmt.Scanf("%d %d", &a, &b)
	fmt.Println(max3(a+b, a*b, a-b))
}

func max3(a, b, c int) int {
	if a > b && a > c {
		return a
	}
	if b > a && b > c {
		return b
	}
	return c
}
