package main

import "fmt"

func main() {
	var N int
	fmt.Scanf("%d", &N)
	d := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &d[i])
	}
	sum := 0
	for i := 0; i < N; i++ {
		for j := i + 1; j < N; j++ {
			sum += d[i] * d[j]
		}
	}
	fmt.Println(sum)
}
