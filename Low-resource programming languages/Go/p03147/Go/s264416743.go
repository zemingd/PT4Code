package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	h := make([]int, N)
	for i := range h {
		fmt.Scan(&h[i])
	}
	ans := 0
	seed := true
	for seed {
		on := false
		seed = false
		for i := 0; i < N; i++ {
			if h[i] > 0 {
				if !on {
					on = true
					ans++
					seed = true
				}
				h[i]--
			} else {
				on = false
			}
		}
	}
	fmt.Println(ans)
}
