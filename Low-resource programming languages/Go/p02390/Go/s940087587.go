package main

import (
	"fmt"
	"strconv"
)

func main() {
	var x int
	fmt.Scan(&x)
	h, r := d_q(x, 3600)
	m, s := d_q(r, 60)
	fmt.Println(strconv.Itoa(h) + ":" + strconv.Itoa(m) + ":" + strconv.Itoa(s))
}

func d_q(x int, y int) (d int, q int) {
	d = x / y
	q = x % y
	return
}