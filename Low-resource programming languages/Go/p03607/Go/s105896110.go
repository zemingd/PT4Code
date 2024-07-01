package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

  as := map[int]bool{}
	for i := 0; i < n; i++ {
		var a int
		fmt.Scan(&a)
		as[a] = !as[a]
	}

	ans := 0
	for _, b := range as {
		if b {
			ans++
		}
	}

	fmt.Print(ans)
}
