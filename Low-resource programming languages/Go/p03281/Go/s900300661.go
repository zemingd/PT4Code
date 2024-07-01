package main

import "fmt"

func main() {
	// Code for B - 105
	var N int
	fmt.Scanf("%d", &N)
	flag := make(map[int]int, N+1)

	for i := 1; i <= N; i++ {
		for j := 1; j <= N; j++ {
			if j%i == 0 {
				flag[j]++
			}
		}
	}

	var count int
	for i := 1; i <= N; i++ {
		if flag[i] == 8 && i%2 != 0 {
			count++
		}
	}

	fmt.Println(count)
}
