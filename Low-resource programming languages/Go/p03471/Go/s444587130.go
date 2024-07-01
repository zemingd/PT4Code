package main

import "fmt"

func main() {
	var N, Y int
	fmt.Scan(&N, &Y)

	for i := 0; i < N; i++ {
		for j := 0; j <= N-i; j++ {
			if 10000*i+5000*j+1000*(N-i-j) == Y {
				fmt.Println(i, j, N-i-j)
				return
			}
		}
	}
	fmt.Println(-1, -1, -1)
}
