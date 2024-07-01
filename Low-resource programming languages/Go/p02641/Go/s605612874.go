package main

import (
	"fmt"
)

func main() {
	var X, N int
	fmt.Scan(&X, &N)
	if N == 0 {
		fmt.Println(X)
		return
	}
	p_lis := make([]int, N)
	for i := 0; i < N; i++ {
		var p int
		fmt.Scan(&p)
		p_lis[i] = p
	}
	diff := 0
	for {
		if !contains(p_lis, X-diff) {
			fmt.Println(X - diff)
			return
		}
		if !contains(p_lis, X+diff) {
			fmt.Println(X + diff)
			return
		}
		diff++
	}
}
func contains(s []int, e int) bool {
	for _, v := range s {
		if e == v {
			return true
		}
	}
	return false
}
