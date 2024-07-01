package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scanf("%d", &N)
	ans := 0
	for i := 0; i < N; i++ {
		var ai int
		fmt.Scanf("%d", &ai)
		ans += ai - 1
	}
	fmt.Printf("%d\n", ans)
}
