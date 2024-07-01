package main

import "fmt"

func main() {
	var (
		a   int
		b   int
		ans int
	)

	fmt.Scan(&a, &b)

	for i := 0; i < 2; i++ {
		if a > b {
			ans = ans + a
			a = a - 1
		} else if a <= b {
			ans = ans + b
			b = b - 1
		}
	}

	fmt.Print(ans)

}
