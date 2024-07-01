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
	if len(s) == 4 {
		if s[2:3] != "C" {
			fmt.Println("WA")
			return
		}
	} else if strings.Count(s[2:len(s)-1], "C") != 1 {
		fmt.Println("WA")
		return
	}
	s = s[1:]
	for _, v := range s {
		if strings.Index("Cabcdefghijklmnopqrstuvwxyz", string(v)) == -1 {
			fmt.Println("WA")
			return
		}
	}
	fmt.Println("AC")
}
