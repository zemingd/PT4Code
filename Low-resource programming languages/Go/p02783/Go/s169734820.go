package main

import (
	"fmt"
)

func main() {
	var H, A int
	fmt.Scan(&H)
	fmt.Scan(&A)
	i := 0
	for i = 1; ; i++ {
		if H-(A*i) <= 0 {
			break
		}
	}

	fmt.Println(i)
}
