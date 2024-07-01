package main

import "fmt"

func main() {
	var N int
	var P []int
	fmt.Scanf("%d", &N)
	P = make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &P[i])
	}
	min := 0
	count := 0
	for i := 0; i < N; i++ {
		if i == 0 {
			min = P[0]
			count++
			continue
		}
		if min < P[i] {
			continue
		} else {
			min = P[i]
			count++
		}
	}
	fmt.Println(count)
}
