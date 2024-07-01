package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	var ans int
	for i := 1; i <= n; i++ {
		ans += i
	}
	fmt.Println(ans)
}
