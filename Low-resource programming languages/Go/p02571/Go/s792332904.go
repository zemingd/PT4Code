package main

import (
	"fmt"
	"strings"
)

func main() {
	var s, t string
	fmt.Scan(&s)
	fmt.Scan(&t)
	if len(t) > len(s){
		return
	}

	maxcount := 0
	for i:=len(t); i>=0; i--{
		if strings.Contains(s, t[:i]){
			maxcount = i
			break
		}
	}

	if maxcount == 0{
		for i:=0; i<len(t); i++{
			if strings.Contains(s, string(t[i])){
				maxcount = 1
				break
			}
		}
	}

	fmt.Println(len(t)-maxcount)
}