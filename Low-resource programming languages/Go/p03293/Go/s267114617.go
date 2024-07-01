package main

import (
	"fmt"
)

func main() {
	var n, t string
	fmt.Scan(&n, &t)
	w := n
	for i := 0; i < len(n); i++ {
		w = w[(len(n)-1):] + w[0:(len(n)-1)]
		if w == t {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
}
