package main

import (
	"fmt"
)

func main() {
	var k, a, b int
	var f bool
	fmt.Scanf("%d", &k)
	fmt.Scanf("%d %d", &a, &b)

	for i := a; i <= b; i++ {
		if i%k == 0 {
			f = true
			println(i)
			// break
		}
	}
	if f == true {
		fmt.Println("OK")
	} else {
		fmt.Println("NG")
	}
}
