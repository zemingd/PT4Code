package main

import (
	"fmt"
)

func main() {
	var s, t string
	fmt.Scanf("%s", &s)
	fmt.Scanf("%s", &t)
	if s == t[0:len(s)] && len(s)+1 == len(t) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
