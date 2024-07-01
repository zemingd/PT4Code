package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	ans := 0
	for i := 0; i < n+1; i++ {
		ans += i
	}
	fmt.Println(ans)
}
