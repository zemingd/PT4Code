package main

import "fmt"

// 5 2
// 2 3 4 5 6

// 3 0
// 0 1 2
// 3 -1
// -1 0 1
// 3 -2
// -2 -1 0
// 3 -3
// -3 -2 -1

// 3 -5
func main() {
	var N, L int
	fmt.Scan(&N, &L)
	x := 0
	if L >= 0 {
		for i := 1; i < N; i++ {
			x += L + i
		}
	} else {
		if N+L > 0 {
			for i := 0; i < N; i++ {
				x += L + i
			}
		} else {
			for i := 0; i < N-1; i++ {
				x += L + i
			}
		}
	}
	fmt.Println(x)
}
