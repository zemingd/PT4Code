package main

import "fmt"

func main() {
	var N, M int
	fmt.Scan(&N, &M)
	IDs := make([]int, N)
	for n, _ := range IDs {
		IDs[n] = n + 1
	}

	for i := 0; i < M; i++ {
		var a, b int
		fmt.Scan(&a, &b)
		if a != 1 {
			for k := 1; k < a; k++ {
				IDs = remove(IDs, k)
			}
		}
		if b != N {
			for l := b; l < N; l++ {
				IDs = remove(IDs, l)
			}
		}
	}
	fmt.Println(len(IDs))
}
func remove(s []int, i int) []int {
	if i >= len(s) {
		return s
	}
	return append(s[:i], s[i+1:]...)
}
