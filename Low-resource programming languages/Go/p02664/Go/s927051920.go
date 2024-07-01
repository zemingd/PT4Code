package main

import (
	"fmt"
	"strings"
)

func main() {
	var t string
	fmt.Scan(&t)
	s := strings.Replace(t, "?", "D", -1)
	fmt.Println(s)
}
