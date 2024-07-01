package main

import (
	"fmt"
	"strings"
)

func main() {
	var n, str string
	fmt.Scanln(&n)
	fmt.Scanln(&str)

	parts := strings.Split(str, " ")
	a, b := parts[0], parts[1]
	fmt.Print(run(a, b))
}

func run(a, b string) string {
	buf := make([]byte, len(a), len(b))
	for i, _ := range buf {
		n := i *2
		buf[n] = a[i]
		buf[n+1] = b[i]
	}
	return string(buf)
}
