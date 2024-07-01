package main

import (
	"fmt"
	"strconv"
)

func main() {
	var s string
	fmt.Scan(&s)
	r := 1000
	for i := 0; i < len(s)-2; i++ {
		a, _ := strconv.Atoi(s[i : i+3])
		sa := Abs(753 - a)
		if a == 753 {
			fmt.Println("0")
			return
		} else if r > sa {
			r = sa
		}
	}
	fmt.Println(r)
}

func Abs(a int) int {
	if a < 0 {
		return -a
	} else {
		return a
	}
}
