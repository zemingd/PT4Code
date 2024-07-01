package main

import (
	"fmt"
	"strings"
)

func main() {
	var S string
	fmt.Scan(&S)
	if string(S[0]) != "A" {
		fmt.Println("WA")
	}

	c := 0
	res := true
	for i := 1; i < len(S); i++ {
		if i > 1 && i < len(S)-1 {
			if string(S[i]) == "C" {
				c++
			} else {
				if string(S[i]) == strings.ToUpper(string(S[i])) {
					res = false
					break
				}
			}
		} else {
			if string(S[i]) == strings.ToUpper(string(S[i])) {
				res = false
				break
			}
		}
	}
	if c != 1 {
		res = false
	}

	if res {
		fmt.Println("AC")
	} else {
		fmt.Println("WA")
	}
}
