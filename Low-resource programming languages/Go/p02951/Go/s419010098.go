package main

import "fmt"

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)

	ans := -1
	if d := a - b; d >= c {
		ans = 0
	} else {
		ans = c - d
	}
	fmt.Println(ans)
}
