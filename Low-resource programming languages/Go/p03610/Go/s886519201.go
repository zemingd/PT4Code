package main

import (
	"bytes"
	"fmt"
)

var (
	s string
)

func main() {
	fmt.Scan(&s)
	buf := bytes.NewBufferString("")

	for i, v := range s {
		if (i+1)%2 == 1 {
			buf.WriteRune(v)
		}
	}

	fmt.Println(buf.String())
}
