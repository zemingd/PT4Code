package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)
	cnta := 0
	for i :=0 ;i<len(s); i++ {
		if string(s[i]) == "1" {
			cnta++
		}
	}
	cntb := len(s)-cnta
	if  cntb >= cnta {
		fmt.Println(2*cnta)
	} else if cntb < cnta {
		fmt.Println(2*cntb)
	}
}