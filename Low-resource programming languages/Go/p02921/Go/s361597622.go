package main

import (
	"fmt"
	//"math"
)

func main() {
	var s1 string
	fmt.Scanf("%s", &s1)
	var s2 string
	fmt.Scanf("%s", &s2)
	c := 0 
	for i:=0;i<3;i++{
		if s1[i] == s2[i]{
			c++
		}
	}
	fmt.Print(c)
}