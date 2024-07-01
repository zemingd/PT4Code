package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)
	strLst := strings.Split(s,"")
	var left int
	var right int
	for i := 0; i<len([]rune(s)); i++ {
		if strLst[i]=="A" {
			left = i
			break
		}
	}
	for j := len([]rune(s))-1; j>=0; j-- {
		if strLst[j]=="Z" {
			right = j
			break
		}
	}
	fmt.Println(right-left+1)
}