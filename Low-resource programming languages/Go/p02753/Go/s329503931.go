package main

import (
	"fmt"
)

func main() {
	var S string
	fmt.Scan(&S)
	a := S[0:1]
	b := S[1:2]
	c := S[2:3]
	res := "Yes"
	if a == b && b == c && c == a {
		res = "No"
	}
	fmt.Println(res)

}
