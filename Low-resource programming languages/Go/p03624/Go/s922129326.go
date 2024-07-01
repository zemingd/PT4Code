package main

import (
	"fmt"
	"strings"
)

func main() {
	alphabet := "abcdefghijklmnopqrstuvwxyz"
	var s string
	fmt.Scan(&s)
	for _, c := range s {
		alphabet = strings.Replace(alphabet, string(c), "", 1)
	}
	if len(alphabet) == 0 {
		fmt.Println("None")
	} else {
		fmt.Println(string(alphabet[0]))
	}
}
