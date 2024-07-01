package main

import (
	"bytes"
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)
	var buffer bytes.Buffer
	for i := 0; i < len(s); i++ {
		if i%2 == 0 {
			buffer.WriteByte(s[i])
		}
	}
	fmt.Println(buffer.String())
}
