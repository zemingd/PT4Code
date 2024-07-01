package main

import "fmt"

func main() {
	// Code for C - Grand Garden
	var N int
	fmt.Scanf("%d", &N)

	h := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &h[i])
	}

	var count int
	var flag int = 0

	if N == 1 {
		count = h[0]
	} else {
		if h[0] <= h[1] {
			flag = 0
		} else {
			count += h[0]
			flag = 1
		}

		for i := 0; i < N-1; i++ {
			if h[i] > h[i+1] && flag == 0 {
				count += h[i]
				flag = 1
			}

			if h[i] < h[i+1] && flag == 1 {
				count -= h[i]
				flag = 0
			}
		}

		if flag == 0 {
			count += h[N-1]
		}
	}
	fmt.Println(count)
}
