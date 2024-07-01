package main

import (
	"fmt"
)

func main() {
	var a, b, k int
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&k)

	if (b - a + 1) < k {
		k = b - a + 1
	}

	for i := 0; i < k; i++ {
		fmt.Printf("%d\n", (a + i))
	}

	if (b - k + 1) <= (a + k - 1) {
		k = k - ((a + k - 1) - (b - k + 1) + 1)
	}

	for i := 0; i < k; i++ {
		fmt.Printf("%d\n", (b - k + i + 1))
	}
}
