package main

import "fmt"

func main() {
	var k, a, b int
	fmt.Scan(&k, &a, &b)
	if a%k == 0 {
		fmt.Println("OK")
		return
	}
	rem := (a/k)*k + k
	if a <= rem && rem <= b {
		fmt.Println("OK")
		return
	}
	fmt.Println("NG")
}
