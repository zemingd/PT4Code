package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)

	r := strings.Replace(s, "2017", "2018", 1)
	fmt.Println(r)
}
