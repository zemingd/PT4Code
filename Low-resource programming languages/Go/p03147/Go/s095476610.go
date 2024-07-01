package main

import (
	"fmt"
)

func main() {
	var N int
	var ans int
	var active int
	var h []int

	fmt.Scan(&N)
	for i := 0; i < N; i++ {
		var tmp int
		fmt.Scan(&tmp)
		h = append(h, tmp)
	}

	for i := 0; i < N; i++ {
		if h[i] > active {
			ans += h[i] - active
			active = h[i]
		} else {
			active = h[i]
		}
	}
	fmt.Println(ans)
}
