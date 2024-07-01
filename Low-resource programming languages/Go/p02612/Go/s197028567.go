package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)

	m := 0
	for {
		if 1000*m >= n {
			break
		}
		m = m + 1
	}
	fmt.Println(1000*m - n)
}
