package main

import (
	"bytes"
	"fmt"
	"strings"
)

func main() {
	var n, k int
	var s string
	fmt.Scan(&n)
	fmt.Scan(&k)
	fmt.Scan(&s)

	buf := bytes.NewBufferString("")
	for i := 0; i < len(s); i++ {
		if i == k-1 {
			buf.WriteByte([]byte(strings.ToLower(string([]byte{s[i]})))[0])
		} else {
			buf.WriteByte(s[i])
		}
	}

	fmt.Println(buf)
}
