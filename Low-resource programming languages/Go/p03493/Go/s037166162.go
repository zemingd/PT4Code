package main

import (
	"fmt"
)

func main() {
	var a string
	fmt.Scan(&a)

	x := string(getRune(a, 0))
	y := string(getRune(a, 0))
	z := string(getRune(a, 0))

	res := 0
	for _, i := range []string{x, y, z} {
		if i == "1" {
			res++
		}
	}

	fmt.Println(res)
}

func getRune(s string, i int) rune {
	r := []rune(s)
	return r[i]
}
