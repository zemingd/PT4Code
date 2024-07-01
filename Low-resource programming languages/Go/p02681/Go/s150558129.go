package main

import (
	"fmt"
	"strings"
)

func main() {
	var s, t string
	fmt.Scanf("%s", &s)
	fmt.Scanf("%s", &t)
	if len(t) == len(s)+1 && strings.HasPrefix(t, s) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
