package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	var ans int
	if n%1000 == 0 {
		ans = 0
	} else {
		ans = 1000 - n%1000
	}
	fmt.Println(ans)
}
