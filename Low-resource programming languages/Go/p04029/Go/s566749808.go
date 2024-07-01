package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	v := 0
	for i := 1; i <= n; i++ {
		v += i
	}
	fmt.Println(v)
}
