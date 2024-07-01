package main

import (
	"fmt"
)

func main() {
	var a string
	fmt.Scan(&a)
	var cnt int = 0
	for i := 0; i < len(a); i++ {
		if a[i] == '1' {
			cnt++
		}
	}
	fmt.Println(cnt)
}
