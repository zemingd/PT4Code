package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)
	ans := int64(0)
	for i := 1; i < N; i++ {
		ans += int64(i)
	}
	fmt.Print(ans)
}
