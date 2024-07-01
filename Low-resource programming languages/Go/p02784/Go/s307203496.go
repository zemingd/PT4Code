package main

import (
	"fmt"
)

func main() {
	var H, N int64
	fmt.Scan(&H, &N)
	var i int64
	for i = 0; i < N; i++ {
		var a int64
		fmt.Scan(&a)
		H -= a
	}
	if H <= 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
