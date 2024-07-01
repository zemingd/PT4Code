package main

import (
	"fmt"
	"strings"
)

func main() {
	var s, t string
	fmt.Scan(&s)
	fmt.Scan(&t)
	if strings.Index(t, s) == 0 && len(s) + 1 == len(t) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
