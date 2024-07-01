package main

import "fmt"

func main() {
	var N, R int
	fmt.Scan(&N, &R)
	if(N > 9) {
		fmt.Println(R)
	} else {
		fmt.Println(R + 100 * (10 - N))
	}
}