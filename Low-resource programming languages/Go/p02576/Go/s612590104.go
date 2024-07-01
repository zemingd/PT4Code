package main

import "fmt"

func main() {

	var n, x, t int64
	fmt.Scan(&n, &x, &t)

	count := n/x
	if n%x != 0 {
		count++
	}
	fmt.Println(t*count)
}