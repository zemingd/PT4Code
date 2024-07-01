package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)

	var aIndex = strings.Index(s, "A")
	var zIndex = strings.Index(s, "Z")

	var answer = zIndex - aIndex + 1
	fmt.Println(answer)

}