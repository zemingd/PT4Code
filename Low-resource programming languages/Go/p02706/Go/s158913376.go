package main

import (
	"fmt"
)

func main() {
	var n, m int
	fmt.Scan(&n, &m)

	list := make([]int, m)
	for i := 0; i < m; i++ {
		fmt.Scan(&list[i])
	}

	total := 0
	for i := 0; i < m; i++ {
		total += list[i]
	}
	if n < total {
		fmt.Println(-1)
	} else {
		fmt.Println(n - total)
	}

}
