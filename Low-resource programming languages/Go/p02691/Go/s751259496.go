package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)
	A := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&A[i])
	}
	wa := make(map[int]int, 0)
	sa := make(map[int]int, 0)
	for i := 0; i < N; i++ {
		wa[i+A[i]]++
		sa[i-A[i]]++
	}
	ans := 0
	for k, v_wa := range wa {
		if v_sa, ok := sa[k]; ok {
			ans += v_sa * v_wa
		}
	}
	fmt.Println(ans)
}
