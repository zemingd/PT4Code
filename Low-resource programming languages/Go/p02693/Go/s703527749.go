package main

import "fmt"

func main() {
	var k, a, b int
	fmt.Scan(&k)
	fmt.Scan(&a, &b)
	var res = b / k
	fmt.Println(res)
	if a <= res {
		fmt.Println("OK")
	} else {
		fmt.Println("NG")
	}
}