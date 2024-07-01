package main

import (
	"fmt"
)

func main() {
	var r, D, a int
	fmt.Scan(&r, &D, &a)

	for i := 0; i < 10; i++ {
		a = r*a - D
		fmt.Println(a)
	}
}
