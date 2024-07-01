package main

import (
	"fmt"
	"strings"
)

func main() {
	var n, s string
	fmt.Scan(&n)
	fmt.Scan(&s)
	slice := strings.Split(s, "")
	pre := ""
	num := 0
	for _, v := range slice {
		if pre != v {
			num++
			pre = v
		}
	}
	fmt.Println(num)
}
