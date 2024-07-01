package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)
	if(strings.Contains(s, "AAA") || strings.Contains(s, "BBB")) {
		fmt.Println("No")
	} else {
		fmt.Println("Yes")
	}
}