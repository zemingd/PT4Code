package main

import (
	"fmt"
)

func main() {
	var N, L int
	fmt.Scan(&N, &L)

	allSum := (L + L + N - 1) * N / 2

	if L+N-1 <= 0 {
		fmt.Println(allSum - L + N - 1)
	} else if L >= 0 {
		fmt.Println(allSum - L)
	} else {
		fmt.Println(allSum)
	}
}
