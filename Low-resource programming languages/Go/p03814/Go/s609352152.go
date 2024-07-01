package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	var a, z int
	fmt.Scan(&s)
	a = strings.Index(s, "A")
	z = strings.LastIndex(s, "Z")
	fmt.Println(z-a+1)
}
