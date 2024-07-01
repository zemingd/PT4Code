package main

import "fmt"

func main() {
	var n, ans int
	fmt.Scan(&n)

	for i := 1; i <= n; i++ {
		ans += i
	}
	fmt.Println(ans)
}