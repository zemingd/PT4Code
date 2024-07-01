package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	ans := 1
	v := 2
	for v <= n {
		ans = v
		v *= 2
	}
	fmt.Println(ans)
}
