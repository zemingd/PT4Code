package main

import (
    "fmt"
)

func main() {
	var n, k int
	var s []byte 
    fmt.Scan(&n, &k, &s)
	if s[k-1] == 'A'{
		s[k-1] = 'a'
	} else if s[k-1] == 'B' {
		s[k-1] = 'b'
	} else if s[k-1] == 'C' {
		s[k-1] = 'c'
	}
	fmt.Println(string(s))
}