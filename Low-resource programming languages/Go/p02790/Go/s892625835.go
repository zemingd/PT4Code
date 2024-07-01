package main

import (
	"fmt"
	"strconv"
)

func main() {
	var (
		a, b int
	)
	fmt.Scan(&a, &b)
	if a < b {
		fmt.Print(pras(b, a))
	} else {
		fmt.Print(pras(a, b))
	}
}

func pras(j, p int) string {
	var t string
	for i := 0; i < j; i++ {
		t += strconv.Itoa(p)
	}
	return t
}
