package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)

	if N%2 == 0 {
		fmt.Println(N / 2)
	} else {
		fmt.Println(N/2 + 1)
	}
}
