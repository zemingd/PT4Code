package main

import (
	"fmt"
)

func main() {
	var s []byte
	fmt.Scan(&s)
	n := len(s)
	k, k2, k3 := true, true, true
	for i := 0; i < n; i++ {
		if s[i] != s[n-1-i] {
			k = false
		}
	}
	for i := 0; i < (n-1)/2; i++ {
		if s[i] != s[(n-1)/2-1-i] {
			k2 = false
		}
	}
	for i := (n+3)/2-1; i < n; i++ {
		if s[i] != s[n-1-i] {
			k3 = false
		}
	}
	if k && k2 && k3 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
