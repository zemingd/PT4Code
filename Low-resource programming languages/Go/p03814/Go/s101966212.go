package main

import (
	"fmt"
)

func main() {
	var s string
	var a, z int
	fmt.Scan(&s)
	for i:=0; i<len(s); i++ {
		if s[i:i+1] == "A" {
			a = i
			break
		}
	}

	for i:=len(s)-1; i>-1; i-- {
		if s[i:i+1] == "Z" {
			z = i
			break
		}
	}

	fmt.Println(z-a+1)
}
