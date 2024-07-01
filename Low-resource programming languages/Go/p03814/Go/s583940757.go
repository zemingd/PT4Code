package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)
	
	apos,zpos := 0,0
	
	ajudge := true
	for i,v := range s {
		if v == 'A' && ajudge{
			apos = i
			ajudge = false
		}
		if v == 'Z' {
			zpos = i
		}
	}
	fmt.Println(zpos - apos + 1)
}