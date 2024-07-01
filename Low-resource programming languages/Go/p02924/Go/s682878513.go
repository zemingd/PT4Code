package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	// ans := n * (n - 1) / 2
	ans := 0
	for i := 0; i < n; i++ {
		ans += i
	}
	fmt.Println(ans)
}
