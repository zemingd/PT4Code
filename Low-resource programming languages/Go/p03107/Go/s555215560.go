package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	var n, n1, n2 int

	fmt.Scan(&s)
	n = len(s)

	flag := true
	for flag {
		n1 = len(s)
		s = strings.Replace(s, "01", "", -1)
		s = strings.Replace(s, "10", "", -1)
		n2 = len(s)

		if n1 - n2 > 0 {
			continue
		}else{
			flag = false
			break
		}
	}
	fmt.Println(n-n2)
}
