package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	var result int64 = 0
	for i := 1; i <= n; i++ {
		if i%3 == 0 || i%5 == 0 {
			continue
		}
		result += int64(i)
	}
	fmt.Println(result)
}
