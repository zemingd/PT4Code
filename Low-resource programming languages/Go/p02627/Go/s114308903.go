package main

import (
	"fmt"
	"regexp"
)

func main() {
	var s string
	fmt.Scan(&s)

	divide := `^(a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z)*$`

	if regexp.MustCompile(divide).Match([]byte(s)) {
		fmt.Println("a")
		return
	}
	fmt.Println("A")

}


