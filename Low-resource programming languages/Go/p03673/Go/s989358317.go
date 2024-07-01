package main

import (
	"fmt"
	"strings"
)

func main() {
	var n int
	fmt.Scan(&n)
	ad := n % 2
	l, r := make([]string, n / 2), make([]string, (n / 2) + ad)
	for i := 0; i < n; i++ {
		var tmp string
		fmt.Scan(&tmp)
		tmp = strings.Trim(tmp, "")
		if i % 2 == 0 {
			r[i / 2] = tmp
		} else {
			l[i / 2] = tmp
		}
	}
	if n % 2 == 0 {
		for i := len(l) - 1; i >= 0; i-- {
			fmt.Print(l[i])
			if i != 0 {
				fmt.Print(" ")
			}
		}
		for i := 0; i < len(r); i++ {
			fmt.Print(" ")
			fmt.Print(r[i])
		}
	} else {
		for i := len(r) - 1; i >= 0; i-- {
			fmt.Print(r[i])
			if i != 0 {
				fmt.Print(" ")
			}
		}
		for i := 0; i < len(l); i++ {
			fmt.Print(" ")
			fmt.Print(l[i])
		}
	}
	fmt.Println()
}