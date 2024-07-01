package main

import "fmt"

func main() {
	var a, b, x int64
	fmt.Scan(&a, &b, &x)
	ans := (b - a) / x
	if b % x == 0 || a % x == 0 {
		ans++
	}
	fmt.Println(ans)
}
