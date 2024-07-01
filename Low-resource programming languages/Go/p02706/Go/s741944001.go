package main

import (
	"fmt"
)

func main() {
	var N, M int
	fmt.Scanf("%d %d", &N, &M)
	sum := 0
	for i := 0; i < M; i++ {
		var n int
		fmt.Scanf("%d", &n)
		sum += n
	}
	if sum > N {
		fmt.Println("-1")
		return
	}
	fmt.Println(N - sum)
}
