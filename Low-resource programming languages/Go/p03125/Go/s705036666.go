package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	ans := 0
	if b%a == 0 {
		ans = a + b
	} else {
		ans = b - a
	}

	fmt.Println(ans)
}
