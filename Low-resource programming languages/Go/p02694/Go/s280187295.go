package main

import "fmt"

func main() {
	var a, x, ans uint64
	fmt.Scan(&x)
	ans = 0
	a = 100
	for a < x {
		a += a / 100
		ans++
	}

	fmt.Println(ans)
}
