package main

import (
	"fmt"
)

func main() {
	var n, x, t int
	fmt.Scan(&n, &x, &t)

	count := 0

	for {
		if n > x*count {
			count++
			continue
		}

		break
	}

	fmt.Println(count * t)
}
