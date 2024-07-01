package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	ans := 1
	for ans <= n {
		ans *= 2
	}
	fmt.Println(ans / 2)
}
