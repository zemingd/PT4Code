package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	ans := -n
	for i := 0; i < n; i++ {
		var tmp int
		fmt.Scan(&tmp)
		ans += tmp
	}

	fmt.Println(ans)
}
