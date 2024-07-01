package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)
	var ans int

	ans = 1000 - (N % 1000)

	if ans == 1000 {
		fmt.Println(0)
	} else {
		fmt.Println(ans)
	}
}
