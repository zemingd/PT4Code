package main

import "fmt"

func f(n, x int64) int64 {
	if n == -1 {
		return 0
	}
	return n/x + 1
}

func main() {
	var a, b, x int64
	fmt.Scan(&a, &b, &x)
	fmt.Println(f(b, x) - f(a-1, x))
}
