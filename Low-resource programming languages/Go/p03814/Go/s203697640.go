package main

import (
	"fmt"
	"strings"
)

func main() {
	var a string
	fmt.Scan(&a)
	var start, end int

	start = strings.Index(a, "A")
	end = strings.LastIndex(a, "Z")

	fmt.Println(end - start + 1)
}
