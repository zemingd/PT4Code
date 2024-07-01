package main

import (
	"fmt"
)

func main() {
	var s, t string
	fmt.Scanf("%s", &s)
	fmt.Scanf("%s", &t)
	var out int

	out = 0
	for ii := 0; ii < len(s); ii++ {
		if s[ii:ii+1] != t[ii:ii+1] {
			out++
		}
	}
	fmt.Println(out)

}
