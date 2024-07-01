package main

import (
	"bytes"
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)

	s2 := append([]byte{}, []byte(s)...)
	ReverseBytes(s2)
	s3 := s[(len(s)+3)/2-1 : len(s)]
	s4 := append([]byte{}, []byte(s3)...)
	ReverseBytes(s4)
	if bytes.Equal([]byte(s), s2) && bytes.Equal([]byte(s3), s4) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func ReverseBytes(s []byte) {
	for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {
		s[i], s[j] = s[j], s[i]
	}
}
