package main

import "fmt"

func main() {
	var n int

	var x int

	var t int

	fmt.Scanf("%d %d %d",&n, &x, &t)

	var time = ((n / x) + 1) * t

	fmt.Printf("%d", time)
}