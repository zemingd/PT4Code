package main

import "fmt"

func main() {
	var (
		N int
		K int
	)
	fmt.Scan(&N, &K)

	owners := make(map[int]bool)

	for i := 0; i < K; i++ {
		var d int
		fmt.Scan(&d)
		for j := 0; j < d; j++ {
			var owner int
			fmt.Scan(&owner)
			owners[owner] = true
		}
	}
	fmt.Println(N - len(owners))
}
