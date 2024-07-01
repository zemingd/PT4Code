package main

import (
	"fmt"
)

func main() {
	var k, a, b int64
	fmt.Scan(&k)
	fmt.Scan(&a, &b)
	for i := a; i <= b; i++ {
		if i % k == 0 {
			fmt.Println("OK")
			return 
		}
	}
	fmt.Println("NG")
}
