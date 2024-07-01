package main

import "fmt"

func main() {
	var k, a, b int
	fmt.Scan(&k, &a, &b)

	aa := a / k
	bb := b / k
	fmt.Println(aa, bb)

	if bb-aa > 0 {
		fmt.Println("OK")
		return
	}
	if k == 1 {
		fmt.Println("OK")
		return
	}
	fmt.Println("NG")
}