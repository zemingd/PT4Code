package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)
	strLst := strings.Split(s,"")
	left := -1
	right := -1
	for i := 0; i<len([]rune(s)); i++ {
		fmt.Println(i,len([]rune(s))-1-i)
		if strLst[i]=="A" {
			left = i
		}
		if strLst[len([]rune(s))-1-i]=="Z" {
			right = len([]rune(s))-1-i
		}
		if left>=0 && right>=0  {
			break
		}
	}
	fmt.Println(right-left+1)
}