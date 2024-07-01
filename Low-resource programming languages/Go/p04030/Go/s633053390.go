package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scanf("%s", &s)
	sp := strings.Split(s, "")
	answers := make([]string, 0, 0)
	for _, v := range sp {
		if v == "0" || v == "1" {
			answers = append(answers, v)
		} else {
			if len(answers) > 0 {
				answers = answers[:len(answers)-1]
			}
		}
	}
	fmt.Print(strings.Join(answers, ""))
}
