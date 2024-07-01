package main

import (
	"fmt"
)

func main() {
	var K, X int
	fmt.Scanf("%d", &K)
	fmt.Scanf("%d", &X)

	min :=  X-(K-1)
	if min < -1000000 {
		min = -1000000
	}

	max := X+(K-1)
	if max > 1000000 {
		max = 1000000
	}

	for i := min; i <= max; i++ {
		fmt.Println(i)
	}
}
