package main

import "fmt"

func main() {
	var a, b int
	k := 0
	fmt.Scan(&a)
	fmt.Scan(&b)
	if a > b {
		k = k + a - 1
	} else {
		k = k + a
	}
	fmt.Println(k)
	return
}