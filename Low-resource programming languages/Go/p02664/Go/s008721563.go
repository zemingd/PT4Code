package main

import (
	"fmt"
	"strings"
)

func main() {
	var t string
	fmt.Scanf("%s", &t)
	r := strings.Replace(t, "?", "D", -1)
	fmt.Printf("%s\n", r)
}
