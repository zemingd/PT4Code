package main

import (
	"fmt"
	"strings"
)

func main() {
	var a int
	var b string
	fmt.Scanf("%d\n%s", &a, &b)
	count := len(strings.Split(b, "ABC")) - 1
	fmt.Print(count)
}
