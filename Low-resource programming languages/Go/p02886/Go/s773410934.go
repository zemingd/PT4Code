package main

import "fmt"

func main() {
	var N, sum int
	fmt.Scan(&N)
	tako := make([]int, N)
	for i, _ := range tako {
		fmt.Scan(&tako[i])
	}

	for i := 0; i < N-1; i++ {
		for j := i+1; j < N; j++ {
			sum = sum + tako[i]*tako[j]
		}
	}
	fmt.Println(sum)
}