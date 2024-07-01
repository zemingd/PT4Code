package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	ret := 0
	for i := 1; i <= n; i++ {
		ret += i
	}

	fmt.Println(ret)
}