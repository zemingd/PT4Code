package main

import (
	"fmt"
)

func main() {
	var s, k, o string
	fmt.Scan(&s)
	o = ""

	for i := 0; i < len(s); i++ {
		k = string(s[i])

		if k == "0" || k == "1" {
			o += k
		} else if k == "B" && len(o) > 0 {
			o = o[:len(o)-1]
		}
	}

	fmt.Println(o)
}