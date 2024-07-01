package main

import (
	"fmt"
	"strings"
)

// main is...
func main() {
	var n int
	fmt.Scan(&n)

	var s string
	fmt.Scan(&s)
	var listB = make([]string, n)
	fmt.Println(len(listB))
	listB = strings.Split(s, "")

	ret := 1
	for i := 0; i < len(listB)-1; i++ {
		if listB[i] != listB[i+1] {
			ret++
		}
	}

	fmt.Println(ret)

}

