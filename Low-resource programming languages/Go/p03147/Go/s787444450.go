package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	h := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&h[i])
	}

	ans := 0
	for l := 0; l < N; l++ {
		for h[l] > 0 {
			h[l]--
			for r := l + 1; r < N; r++ {
				if h[r] == 0 {
					break
				}
				h[r]--
			}
			ans++
		}
	}

	fmt.Println(ans)
}
