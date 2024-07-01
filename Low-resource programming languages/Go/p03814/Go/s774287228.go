package main

import (
	"fmt"
)

func main() {
	var s string
	var si, ei int = -1, -1
	fmt.Scan(&s)

	for i,j :=0, len(s)-1; i<len(s) && (si < 0 || ei < 0); i,j = i+1, j-1 {
		sc := string(s[i])
		if si < 0 && sc == "A" {
			si = i
		}
		ec := string(s[j])
		if ei < 0 && ec == "Z" {
			ei = j
		}
	}

	fmt.Println(len(s[si:ei+1]))
}