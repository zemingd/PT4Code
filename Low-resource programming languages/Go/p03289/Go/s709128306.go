package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)
	
	if s[0] != 'A' {
		fmt.Println("WA")
		return
	}
	
	cnt := strings.Count(s[2:len(s)-1], "C")
	if cnt != 1 {
		fmt.Println("WA")
		return
	}
	
	for i := 1; i < len(s); i++ {
		target := s[i]
		if !(target >= 'a' && target <= 'z' || target == 'C') {
			fmt.Println("WA")
			return
		}
	}
	fmt.Println("AC")
}