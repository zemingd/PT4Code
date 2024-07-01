package main

import (
	"fmt"
	"strings"
)

func main() {
	a := 0
	b := 0
	fmt.Scan(&a)
	fmt.Scan(&b)
	if a < b {
		fmt.Println(strings.Repeat(fmt.Sprint(a), b))
		return
	}
	fmt.Println(strings.Repeat(fmt.Sprint(b), a))
}
