package main

import "fmt"

func main() {
	var N, L int
	fmt.Scanf("%d %d", &N, &L)
	total := 0
	for i := 1; i <= N; i++ {
		total += L + i - 1
	}
	min := 10000000000000
	minTaste := 0
	for i := 1; i <= N; i++ {
		taste := total - (L + i - 1)
		diff := total - taste
		if diff < 0 {
			diff = -diff
		}
		if diff < min {
			min = diff
			minTaste = taste
		}
	}
	fmt.Println(minTaste)
}
