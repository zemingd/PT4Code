package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)
	c := strings.Replace(s, "2017", "2018", 1)
	fmt.Println(c)
}
