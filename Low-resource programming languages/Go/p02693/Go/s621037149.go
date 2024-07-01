package main

import "fmt"

func main() {
	var k, a, b int
	fmt.Scan(&k, &a, &b)

	if a%k == 0 || b%k == 0 || b/k > a/k {
		fmt.Println("OK")
	} else {
		fmt.Println("NG")
	}
}
