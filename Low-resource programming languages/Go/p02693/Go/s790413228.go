package main

import "fmt"

func main() {
	var k, a, b int
	fmt.Scan(&k, &a, &b)

	if b-a == 0 {
		fmt.Println("OK")
		return
	}
	if (b-a)/k > 0 {
		fmt.Println("OK")
		return
	}
	fmt.Println("NG")
}		