package main

import (
	"fmt"
)

func main() {
	var s, r string
	fmt.Scan(&s)
	for i, v := range s {
		if i%2 == 0 {
			r += string(v)
		}
	}
	fmt.Println(r)
}