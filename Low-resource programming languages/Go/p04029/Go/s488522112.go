package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)

	ans := 0
	for i := 1; i < n+1; i++ {
		ans = ans + i
	}

	fmt.Println(ans)
}
