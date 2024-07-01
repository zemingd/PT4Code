package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)

	if s[0] == 'A' {
		s = s[1:]
	} else {
		fmt.Println("WA")
		return
	}

	if strings.Count(s[1:len(s)-1], "C") == 1 {
		s = s[0:1] + strings.Replace(s[1:len(s)-1], "C", "", 1)
	} else {
		fmt.Println("WA")
		return
	}

	for _, v := range s {
		if v < 'a' || v > 'z' || v == 'C' {
			fmt.Println("WA")
			return
		}
	}
	fmt.Println("AC")
}
