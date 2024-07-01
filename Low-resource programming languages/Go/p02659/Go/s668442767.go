package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var a int
	var b string

	fmt.Scan(&a, &b)

	bl := strings.Split(b, ".")
	bn, _ := strconv.Atoi(bl[0])
	bdec, _ := strconv.Atoi(bl[1])

	ans := a*bn*100 + a*bdec

	fmt.Println(ans / 100)
}
