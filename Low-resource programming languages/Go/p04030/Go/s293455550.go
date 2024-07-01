package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)
	var outputs []string
	for _, char := range s {
		s := string(char)
		if s == "B" {
			if len(outputs) > 0 {
				outputs = outputs[:len(outputs)-1]
			}
			continue
		}
		outputs = append(outputs, s)
	}

	fmt.Println(strings.Join(outputs, ""))
}
