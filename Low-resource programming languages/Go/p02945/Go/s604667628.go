package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	ans := a + b
	if ans < a-b {
		ans = a - b
	}
	if ans < a*b {
		ans = a * b
	}
	fmt.Println(ans)
}
