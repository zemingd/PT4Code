package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)

	ws := []string{"SUN","MON","TUE","WED","THU","FRI","SAT"}

	for k,w := range ws {
		if w == s {
			fmt.Println(7-k)
			return
		}
	}
}