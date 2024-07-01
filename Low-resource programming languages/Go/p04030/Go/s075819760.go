package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)

	r := make([]rune, 0)
	for _, v := range s {
		if v == 'B' && len(r) > 0 {
			r = r[:len(r)-1]
		} else {
			r = append(r, v)
		}
	}
	fmt.Println(string(r))
}
