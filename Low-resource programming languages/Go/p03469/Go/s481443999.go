package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)

	newym := fmt.Sprintf("2018%s", s[4:])
	fmt.Println(newym)
}
