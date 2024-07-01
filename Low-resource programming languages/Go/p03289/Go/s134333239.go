package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)
	if s[:1] != "A" {
		fmt.Println("WA")
		return
	}
	if strings.Count(s[2:len(s)-2], "C") != 1 {
		fmt.Println("WA")
		return
	}
	s = s[1:]
	s = s[:strings.Index(s, "C")] + s[strings.Index(s, "C")+1:]
	for _, v := range s {
		if strings.Index("abcdefghijklmnopqrstuvwxyz", string(v)) == -1 {
			fmt.Println("WA")
			return
		}
	}
	fmt.Println("AC")
}
