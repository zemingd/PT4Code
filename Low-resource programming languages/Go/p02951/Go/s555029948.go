package main

import "fmt"

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)

	var ans int
	if ans = c - (a - b); ans < 0 {
		ans = 0
	}
	fmt.Println(ans)
}
