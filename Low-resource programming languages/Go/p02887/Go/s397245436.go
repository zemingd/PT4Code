package main

import (
	"fmt"
)

func main() {
	var n, s string
	fmt.Scan(&n)
	fmt.Scan(&s)
	var pre rune
	num := 0
	for _, v := range s {
		if pre != v {
			num++
			pre = v
		}
	}
	fmt.Println(num)
}
