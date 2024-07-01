package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)

	var t string
	for i := 0; i < len(s); i++ {
		if i%2 == 0 {
			t = t + s[i:(i+1)]
		}
	}
	fmt.Println(t)
}
