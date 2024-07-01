package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	if solve(a, b) {
		fmt.Println("Yes")
		return
	}
	fmt.Println("No")
}
func solve(a int, b int) bool {
	var x int
	x = a * b
	if x%2 == 1 {
		return true
	}
	return false
}
