package main

import (
	"fmt"
)

func main() {
	var d, n int
	fmt.Scan(&d, &n)

	var ans int
	switch d {
	case 0:
		ans = 1 * n
	case 1:
		ans = 100 * n
	case 2:
		ans = 10000 * n
	}
	fmt.Println(ans)
}
