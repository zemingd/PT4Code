package main

import (
	"fmt"
)

func main() {
	var s, t string
	fmt.Scan(&s, &t)

	x := len(s)
	for i := 0; i < x; i++ {
		if s[0:x] == t[0:x] {
			fmt.Println("Yes")
			return
		}
		s = s[x-1:x] + s
	}
	fmt.Println("No")
}
