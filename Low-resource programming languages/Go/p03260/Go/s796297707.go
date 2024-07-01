package main

import "fmt"

func isEven(n int) bool { return n%2 == 0 }

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	if isEven(a) || isEven(b) {
		fmt.Println("No")
	} else {
		fmt.Println("Yes")
	}
}
