package main

import "fmt"

func main() {
	var k, a, b int
	fmt.Scan(&k, &a, &b)

	if ((a/k+1)*k) <= b || a%k == 0 || b%k == 0 {
		fmt.Println("OK")
	} else {
		fmt.Println("NG")
	}
}
