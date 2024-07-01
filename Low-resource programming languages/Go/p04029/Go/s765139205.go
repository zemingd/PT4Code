package main

import (
	"fmt"
)

func main() {
	var N, sum int
	fmt.Scanf("%d", &N)
	for i := 1; i <= N; i++ {
		sum += i
	}
	fmt.Println(sum)
}
