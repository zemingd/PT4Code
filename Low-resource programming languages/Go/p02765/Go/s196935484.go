package main

import "fmt"

func main() {
	var N, R int
	fmt.Scan(&N)
	fmt.Scan(&R)
	if N >= 10 {
		fmt.Println(R)
	} else {
		fmt.Println(R + 100*(10-N))
	}
}
