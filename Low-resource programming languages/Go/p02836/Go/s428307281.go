package main

import (
	"fmt"
)

func main() {
	var a string
	fmt.Scan(&a)

	cnt := 0
	for i := 0; i < len(a)/2; i++ {
		if a[i] != a[len(a)-i-1] {
			cnt++
		}
	}
	fmt.Println(cnt)
}
