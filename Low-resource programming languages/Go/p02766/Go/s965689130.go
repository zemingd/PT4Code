package main

import "fmt"

func main() {
	var N, K float64
	fmt.Scan(&N, &K)
	var count int
	for {
		N = N/K
		count++
		if(N < 1) {
			fmt.Println(count)
			return
		} 
	}
}