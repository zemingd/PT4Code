package main

import (
	"fmt"
	"strconv"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	aa, bb := "", ""
	for i := 0; i < b; i++ {
		aa += strconv.Itoa(a)
	}
	for i := 0; i < a; i++ {
		bb += strconv.Itoa(b)
	}

	if aa < bb {
		fmt.Println(aa)
	} else {
		fmt.Println(bb)
	}
}
