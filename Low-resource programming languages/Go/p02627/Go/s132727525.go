package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)

	lower := strings.ToLower(s)

	if s != lower {
		// 大文字
		fmt.Println("A")
	} else {
		// 小文字
		fmt.Println("a")
	}
}
