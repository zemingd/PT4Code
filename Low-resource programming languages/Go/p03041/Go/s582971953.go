package main

import (
	"fmt"
	//"math"
)

func main() {
	var n,k int 
	var s string
	str := ""
	fmt.Scanf("%d %d", &n,&k)
	fmt.Scanf("%s", &s)
	for i := 0 ; i<k;i++{
		str += string(s[i])
	}
	str += string(byte(s[k]) + 32)
	for i := k+1 ; i<len(s);i++{
		str += string(s[i])
	}
	fmt.Print(str)
}