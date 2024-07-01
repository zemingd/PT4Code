package main

import (
	"fmt"
	"unicode"
)

func main() {
	var s string
	fmt.Scan(&s)
	var res bool = true
	c1, c2 := 0, 0
	for i, x := range s {
		switch {
		case x == 'A':
			c1++
			if i != 0 {
				res = false
				break
			}
		case x == 'C':
			c2++
			if i < 2 || i == len(s)-1 {
				res = false
				break
			}
		case unicode.IsUpper(x):
			res = false
			break
		}
	}
	if c1 != 1 || c2 != 1 {
		res = false
	}
	if res {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
