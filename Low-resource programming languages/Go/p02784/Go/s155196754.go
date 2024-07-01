package main

import (
	"fmt"
	"sort"
)

func main() {
	var H, N int
	fmt.Scanf("%d %d", &H, &N)

	As := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&As[i])
	}

	sort.Ints(As)

	var kill bool
	var attack int
	for i := len(As) - 1; i >= 0; i-- {
		attack += As[i]
		if attack >= H {
			kill = true
			break
		}
	}

	if kill {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
