package main

import "fmt"

func main() {
	var n, a int
	fmt.Scan(&n)
	b := make([]int, n)

	for i := range b {
		fmt.Scan(&a)
		b[n/2-((i+1)/2)*[]int{-1, 1}[(n+i)%2]] = a
	}

	for i := range b {
		if i != 0 {
			fmt.Print(" ")
		}
		fmt.Print(b[i])
	}
	fmt.Println()
}
