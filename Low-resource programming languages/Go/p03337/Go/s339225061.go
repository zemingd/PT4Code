package main

import (
	"os"
	"strconv"
)

func main() {
	a, _ := strconv.Atoi(os.Args[0])
	b, _ := strconv.Atoi(os.Args[1])
	add := a + b
	sub := a - b
	mul := a * b
	ret := add
	if ret < sub {
		ret = sub
		if ret < mul {
			ret = mul
		}
	}
}
