package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)

	alpha := []string{"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"}

	for _, v := range s {
		for ak, av := range alpha {
			if string(v) == av {
				alpha = append(alpha[:ak], alpha[ak+1:]...)
				break
			}
		}
	}

	if len(alpha) == 0 {
		fmt.Println("None")
	} else {
		fmt.Println(alpha[0])
	}
}