package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var A uint64
	var s string
	fmt.Scan(&A, &s)

	bs := strings.Split(s, ".")
	if len(bs) == 1 {
		b, _ := strconv.ParseUint(bs[0], 10, 64)
		fmt.Println(A * b)
		return
	}

	b, _ := strconv.ParseUint(bs[0], 10, 64)
	c, _ := strconv.ParseUint(bs[1], 10, 64)

	ret := A*b + A*c/100
	fmt.Println(ret)
}
