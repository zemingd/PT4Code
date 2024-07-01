package main

import (
	"fmt"
)

func main() {
	var n int
	var s string
	fmt.Scan(&n,&s)
	
	ans := ""
	past := ""
	for _,v := range s {
		stv := string(v)
		if past != stv {
			ans += stv
		}
		past = stv
	}
	fmt.Println(len(ans))