package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)
	ss := strings.Split(s, "/")
	ss[0] = "2018"
	fmt.Println(strings.Join(ss, "/"))
}