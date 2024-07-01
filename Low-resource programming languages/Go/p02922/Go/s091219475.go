package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	res := b / a
	if b % a > 0 {
		res++
	}

	fmt.Println(res)
}
