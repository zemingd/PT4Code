package main

import (
	"fmt"
	"strconv"
	"strings"
)

func Abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func Min(x, y int) int {
	if x <= y {
		return x
	}
	return y
}

func main() {
	var str string
	fmt.Scan(&str)
	cs := strings.Split(str, "")
	n := len(str)
	xs := make([]int, n)
	for i, c := range cs {
		xs[i], _ = strconv.Atoi(c)
	}
	n0 := 0
	n1 := 0
	for i := 0; i < n; i++ {
		d0 := i % 2
		d1 := 1 - d0
		n0 += Abs(d0 - xs[i])
		n1 += Abs(d1 - xs[i])
	}
	val := Min(n0, n1)
	fmt.Print(val)
}