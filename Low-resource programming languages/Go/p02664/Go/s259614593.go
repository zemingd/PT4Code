package main

import (
	"fmt"
	"strings"
)

func main() {
	var t string
	fmt.Scan(&t)
	fmt.Println(strings.Replace(t, "?", "D", -1))
}
