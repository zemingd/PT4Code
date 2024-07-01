package main

import (
	"fmt"
	"strconv"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	var s, t string
	for i := 0; i < b; i++ {
		s += strconv.Itoa(a)
	}
	for i := 0; i < a; i++ {
		t += strconv.Itoa(b)
	}
	if s < t {
		fmt.Println(s)
	} else {
		fmt.Println(t)
	}
}
