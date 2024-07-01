package main

import (
	"fmt"
)

func main() {
	var N, X, l, w int
	fmt.Scan(&N, &X)
	for i := 0; i <= N; i++ {
		fmt.Scan(&l)
		w += l
		if w > X {
			fmt.Println(i + 1)
			return
		}
	}
	fmt.Println(1)

}