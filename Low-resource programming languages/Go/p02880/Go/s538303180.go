package main

import (
	"fmt"
)

func main() {
	var n int
	_, _ = fmt.Scan(&n)
	b := false
	
	for c := 2; c < 10; c++ {
		if n%c == 0 && n/c < 10 {
			b = true
			break
		}
	}
	
	if b {
		println("Yes")
	} else {
		println("No")
	}
}
