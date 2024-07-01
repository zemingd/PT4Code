package main

import (
	"fmt"
)

func main() {
	var N int

	fmt.Scanf("%d", &N)

	set := make(map[int]int, N)
	for i := 0; i < N; i++ {
		var d int
		fmt.Scanf("%d", &d)
		set[d]++
	}

	fmt.Println(len(set))
}
