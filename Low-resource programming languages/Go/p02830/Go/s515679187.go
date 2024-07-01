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
	fmt.Print(run(parts[0], parts[1]))
}

func run(a, b string) string {
	buf := make([]byte, len(a)+len(b))
	for i := 0; i < len(a); i++ {
		n := i * 2
		buf[n] = a[i]
		buf[n+1] = b[i]
	}
	return string(buf)
}
