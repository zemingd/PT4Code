package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	x := 1
	for x*2 <= n {
		x *= 2
	}
	fmt.Println(x)
}
