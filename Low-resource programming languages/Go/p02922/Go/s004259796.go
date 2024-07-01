package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	ans := 0
	outlet := 1
	for b > outlet {
		outlet += a
		ans++
	}
	fmt.Println(ans)
}
