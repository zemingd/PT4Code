package main

import "fmt"

func main() {
	var k, a, b int
	fmt.Scan(&k, &a, &b)
	if a%k == 0 || b%k == 0 {
		fmt.Println("OK")
		return
	}

	if b-a >= k {
		fmt.Println("OK")
		return
	}

	fmt.Println("NG")
}