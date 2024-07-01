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
	if len(s)-cnta >= cnta {
		fmt.Println(2*cnta)
	} else if len(s)-cnta < cnta {
		fmt.Println(2*(len(s)-cnta))
	}
}