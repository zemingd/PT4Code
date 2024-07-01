package main

import (
	"fmt"
	"strconv"
)

func main() {
	var N string
	var i int
	fmt.Scan(&N)

	l := len(N)
	l = l - 3
	i, _ = strconv.Atoi(N[l:])
	r := 1000 - i
	fmt.Println(r)
}