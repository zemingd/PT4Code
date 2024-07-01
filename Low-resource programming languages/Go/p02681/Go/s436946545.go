package main

import (
	"fmt"
)

func main() {
	var s, t string
	fmt.Scan(&s, &t)

	t2 := t[:len(t)-1]
	if s == t2 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
