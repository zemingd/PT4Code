package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	fmt.Println(Min(Min(a, b), 12))
}
func Min(a, b int) int {
	if b < a {
		return b
	}
	return a
}
