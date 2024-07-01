package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)
	res := "A"
	str := "abcdefghijklmnopqrstuvwxyz"
	if strings.Contains(str, s) {
		res = "a"
	}

	
	

	fmt.Println(res)
}
