package main

import (
	"fmt"
	"strconv"
	"strings"
)

func strToInt(s string) int {
	i, err := strconv.Atoi(s)
	if err != nil {
		panic(err)
	}
	return i
}

func main() {
	var a, b string
	fmt.Scan(&a, &b)
	s := strings.Repeat(a, strToInt(b))
	t := strings.Repeat(b, strToInt(a))

	if s < t {
		fmt.Println(s)
	} else {
		fmt.Println(t)
	}
}
