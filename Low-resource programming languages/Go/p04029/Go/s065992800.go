package main

import "fmt"

func main() {
	var n int

	//input
	fmt.Scan(&n)
	fmt.Println(sum(n))

}

func sum(n int) int {
	if n == 0 {
		return 0
	}
	return sum(n-1) + n
}
