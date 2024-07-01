package main

import (
	"fmt"
)

func main() {
	var text string
	fmt.Scan(&text)

	var E0, E1, O0, O1 int
	for i, t := range text {
		if i%2 == 0 {
			if t == '0' {
				E0++
			} else {
				E1++
			}
		} else {
			if t == '0' {
				O0++
			} else {
				O1++
			}
		}
	}
//	fmt.Println(min(E0+O1, E1+O0))
if 	E0+O1 < E1+O0 {
	fmt.Println(E0+O1)
	}else {
	fmt.Println(E1+O0)
}



}

/*
func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}
*/
