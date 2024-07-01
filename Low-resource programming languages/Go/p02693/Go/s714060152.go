package main

import (
	"fmt"
)

func main() {
	var k, a, b int
	fmt.Scan(&k, &a, &b)

	flag := 0
	for i := a; i <= b; i++ {
		if i % k == 0 {
			flag = 1
		}
	}
	if flag == 1 {
		fmt.Println("OK")
	} else {
		fmt.Println("NG");
	}
}
