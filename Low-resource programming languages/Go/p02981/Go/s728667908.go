package main

import "fmt"

func main() {
	var n, a, b int
	fmt.Scan(&n, &a, &b)
	if n*a < b {
		fmt.Println(n * a)
	} else {
		fmt.Println(b)
	}
}
