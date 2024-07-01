package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	ans := 1
	for i := 1; 1<<uint(i) <= n; i++ {
		ans = 1 << uint(i)
	}
	fmt.Println(ans)
}
