package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	if n == 1 {
		fmt.Println("0")
		return
	}
	fmt.Println((1 + n - 1) * (n - 1) / 2)
}
