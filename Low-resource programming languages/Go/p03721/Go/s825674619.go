package main

import "fmt"

func main() {
	maxi := 100000 + 1
	var n, k int
	var a, b int
	fmt.Scan(&n, &k)
	bucket := make([]uint64, maxi)
	for i := 0; i < n; i++ {
		fmt.Scan(&a, &b)
		bucket[a] += uint64(b)
	}
	sum := uint64(0)
	for i := 1; i <= maxi; i++ {
		sum += bucket[i]
		if uint64(k) <= sum {
			fmt.Println(i)
			break
		}
	}
}
