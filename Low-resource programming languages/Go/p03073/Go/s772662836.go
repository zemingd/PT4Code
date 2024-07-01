package main

import (
	"fmt"
)

func countMin(str string) (count int) {
	count = 0
	var c1, c2 int
	for i, x := range str {
		if i%2 == 0 {
			if x == '0' {
				c1++
			}
			if x == '1' {
				c2++
			}
		}
		if i%2 == 1 {
			if x == '0' {
				c2++
			}
			if x == '1' {
				c1++
			}
		}
	}
	if c1 < c2 {
		count = c1
	} else {
		count = c2
	}
	return

}

func main() {
	var str string
	fmt.Scan(&str)
	fmt.Println(countMin(str))
}
