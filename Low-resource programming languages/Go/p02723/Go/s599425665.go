package main

import (
	"fmt"
	"strings"
)

func main() {
	var a string
	fmt.Scanf("%s", &a)
	l := strings.Split(a, "")
	if l[2] == l[3] && l[4] == l[5] {
		fmt.Printf("Yes")
	} else {
		fmt.Printf("No")
	}
}