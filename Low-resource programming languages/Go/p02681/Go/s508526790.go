package main

import (
	"fmt"
	"strings"
)

func main() {
	var s, t string
	fmt.Scan(&s)
	fmt.Scan(&t)
	if strings.HasPrefix(t, s) == true {
		fmt.Print("Yes")
	} else {
		fmt.Print("No")
	}
}
