package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	var o, t int
	fmt.Scan(&s)
	cols := strings.Split(s, "")
	for _, c := range cols {
		if c == "1" {
			o++
		} else {
			t++
		}
	}
	if o > t {
		fmt.Println(t * 2)
	} else {
		fmt.Println(o * 2)
	}
}
