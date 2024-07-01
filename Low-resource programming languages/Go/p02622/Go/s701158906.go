package main

import (
	"fmt"
)

func main() {
	var S string
	var T string
	fmt.Scan(&S)
	fmt.Scan(&T)

	var r int
	for i:=0; i < len(S); i++ {
		if S[i] != T[i] {
			r += 1
		}
	}
	
	fmt.Println(r)
}