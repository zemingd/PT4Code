package main

import "fmt"

func main() {
	var N, Y int
	fmt.Scan(&N, &Y)

	for a := 0; a <= N; a++ {
		for b := 0; b <= (N - a); b++ {
			c := N - (a + b)
			sum := a*10000 + b*5000 + c*1000
			if sum == Y {
				fmt.Println(a, b, c)
				return
			}
		}
	}
	fmt.Println(-1, -1, -1)
}
