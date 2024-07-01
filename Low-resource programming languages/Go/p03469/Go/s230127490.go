package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)
	fmt.Printf("%s%s%s", s[0:3], "8", s[4:])
}
