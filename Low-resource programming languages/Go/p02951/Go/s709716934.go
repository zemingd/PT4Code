package main

import "fmt"

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)
	ans := c - a + b
	if ans < 0 {
		ans = 0
	}
	fmt.Println(ans)
}
