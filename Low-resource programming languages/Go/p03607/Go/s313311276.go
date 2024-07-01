package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	counter := map[int]int{}
	for i := 0; i < n; i++ {
		var a int
		fmt.Scan(&a)
		counter[a]++
	}

	var ans int
	for _, v := range counter {
		ans += v & 1
	}
	fmt.Println(ans)
}