package main

import (
	"fmt"
)

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)
	for i := 0; i < c; i++ {
		if a+i <= b {
			fmt.Println(a + i)
		} else {
			break
		}
	}
	tmp := a + c
	for i := c - 1; i >= 0; i-- {
		if b-i >= tmp {
			fmt.Println(b - i)
		}
	}

}