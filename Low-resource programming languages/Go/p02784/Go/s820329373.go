package main

import "fmt"

func main() {
	var h, n int
	fmt.Scan(&h, &n)

	sum := 0
	var a int
	for i := 0; i < n; i++ {
		fmt.Scan(&a)
		sum += a
	}

	if h <= sum {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
