package main

import "fmt"

func main() {
	var N, Y, k int
	fmt.Scan(&N, &Y)
	for i := 0; i <= N; i++ {
		for j := 0; j <= N-i; j++ {
			x := (Y - 10000*i - 5000*j) / 1000
			if i+j+x == N {
				fmt.Printf("%d %d %d\n", i, j, k)
				return
			}
		}
	}
	fmt.Println("-1 -1 -1")

}