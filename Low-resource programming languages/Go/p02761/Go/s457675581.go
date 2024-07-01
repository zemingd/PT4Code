package main

import (
	"fmt"
)

func main() {

	var N, M int
	fmt.Scanf("%d %d\n", &N, &M)
	r := make([]int, N)
	for i := 0; i < N; i ++ {
		if i == 0 {
			r[0] = 1
		} else {
			r[i] = 0
		}
	}
	var re string
	cache := map[int]int{}
	for i := 0; i < M; i ++ {
		var j, n int
		fmt.Scanf("%d %d\n", &j, &n)
		if j == 1 && n == 0 {
			re = "-1"
			break
		}
		if num, exists := cache[j]; exists && num != n {
			re = "-1"
			break
		}
		r[j-1] = n
		cache[j] = n
	}
	if re != "-1" {
		for _, n := range r {
			re += fmt.Sprint(n)
		}
	}
	fmt.Println(re)
}
