package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var str string
	fmt.Scanln(&str)

	parts := strings.Split(str, " ")
	a, _ := strconv.Atoi(parts[0])
	b, _ := strconv.Atoi(parts[1])

	fmt.Print(run(a, b))
}

func run(a, b int) int {
	x, y := a, b
	for i := 0; i < 1000000; i++{
		if x > y {
			y += b
		} else if y > x {
			x += a
		} else {
			return x
		}
	}
	return 0
}
