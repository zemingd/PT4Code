package main

import (
	"fmt"
)

func prime(n int) []bool {
	tab := make([]bool, n)

	for i := 0; i < n; i++ {
		if i % 2 == 0 {
			tab[i] = false
		} else {
			tab[i] = true
		}
	}
	tab[0] = false
	tab[2] = true

	for i := 3; i < n; i += 1 {
		for j := 2; i * j < n; j += 1 {
			tab[i * j] = false
		}
	}

	return tab
}

func main() {
	var x int
	fmt.Scanf("%d", &x)

	tab := prime(110000)

	for i := x; ; i++ {
		if tab[i] {
			fmt.Println(i)
			break
		}
	}
}
