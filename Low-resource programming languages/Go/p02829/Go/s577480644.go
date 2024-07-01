package main

import (
	"fmt"
	"strconv"
)

func main() {
	var a, b string
	fmt.Scanln(&a)
	fmt.Scanln(&b)

	na, _ := strconv.ParseInt(a, 10, 0)
	nb, _ := strconv.ParseInt(b, 10, 0)
	fmt.Print(run(na, nb))
}

func run(na, nb int64) int64 {
	const total = 6
	return total - na - nb
}
