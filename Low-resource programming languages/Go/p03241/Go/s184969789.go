package main

import (
	"fmt"
)

func main() {
	var n, m int
	fmt.Scan(&n, &m)

	for k := m / n; k > 0; k-- {
		if m%k == 0 {
			fmt.Println(k)
			return
		}
	}
}