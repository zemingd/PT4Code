package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)

	set := make(map[int]bool, 1000000)
	set[n] = true

	for i := 2; ; i += 1 {
		var next int
		if n % 2 == 0 {
			next = n / 2
		} else {
			next = 3 * n + 1
		}

		if set[next] {
			fmt.Println(i)
			break
		}
		set[next] = true
		n = next
	}
}
