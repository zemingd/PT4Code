package main

import (
	"fmt"
)

func main() {
	var N, M int
	fmt.Scan(&N, &M)
	workDays := 0
	var a int
	for i := 0; i < M; i++ {
		fmt.Scan(&a)
		workDays += a
	}
	if N-workDays > 0 {
		fmt.Println(N - workDays)
	} else {
		fmt.Println(-1)
	}
}
