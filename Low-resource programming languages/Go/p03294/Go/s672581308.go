package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	var (
		ans int
		tmp int
	)
	for i := 0; i < n; i++ {
		fmt.Scan(&tmp)
		ans += tmp - 1
	}

	fmt.Println(ans)
}
