package main

import "fmt"

func main() {
	var k, a, b int
	fmt.Scan(&k, &a, &b)

	lar := b / k * k
	if a <= lar {
		fmt.Println("OK")
		return
	}
	fmt.Println("NG")
}