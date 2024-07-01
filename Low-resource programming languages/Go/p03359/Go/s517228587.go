package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	ans := a - 1
	if b >= a {
		ans++
	}
	fmt.Println(ans)
}