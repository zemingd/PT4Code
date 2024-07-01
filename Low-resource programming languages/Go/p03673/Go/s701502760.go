package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}
	c := 0
	for i := n - 1; i >= 0; i -= 2 {
		fmt.Printf("%d", a[i])
		c++
		if c == n {
			fmt.Printf("\n")
		} else {
			fmt.Printf(" ")
		}
	}
	for i := n % 2; i < n; i += 2 {
		fmt.Printf("%d", a[i])
		c++
		if c == n {
			fmt.Printf("\n")
		} else {
			fmt.Printf(" ")
		}
	}
}
