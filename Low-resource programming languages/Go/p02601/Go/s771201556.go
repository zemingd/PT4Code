package main

import "fmt"

func main() {
	var r, g, b, k int
	fmt.Scanf("%d %d %d", &r, &g, &b)
	fmt.Scanf("%d", &k)

	for i := 1; i <= k; i++ {
		if r >= g {
			g = 2 * g
			continue
		}
		if g >= b {
			b = 2 * b
			continue
		}
	}

	if r < g && g < b {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")

	}

}
