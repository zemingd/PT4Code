package main

import (
	"fmt"
)

func main() {
	var k int
	fmt.Scan(&k)

	x := 7 % k
	for i := 1; i <= k; i++ {
		if x == 0 {
			fmt.Println(i)
			return
		}
		x = (x*10 + 7) % k
	}
	fmt.Println(-1)
}
