package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	var i int
	fmt.Scan(&s, &i)
	fmt.Println(strings.Split(s, "")[i-1])
}
