package main

import "fmt"

func main() {
	var n int

	var x int

	var t int

	fmt.Scanf("%d %d %d",&n, &x, &t)

	var count = n / x

	if (n % x) > 0 {
		count += 1
	}

	var time = count * t

	fmt.Printf("%d", time)
}