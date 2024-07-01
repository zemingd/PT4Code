package main

import (
	"fmt"
)

func main() {
	var s, t string

	_, err := fmt.Scanf("%s\n%s", &s, &t)
	if err != nil {
		return
	}

	sLen := len(s)
	tLen := len(t)

	if sLen == 0 || tLen == 0{
		fmt.Printf("0\n")
		return
	}
	
	//如果这两个字符串长度相等
	if sLen == tLen {
		cnt := 0
		for i:=0;i<sLen;i++{
			if s[i] != t[i]{
				cnt++
			}
		}
		fmt.Printf("%d\n", cnt)
		return
	}

	min := tLen
	for i:=0;i<sLen-tLen;i++ {
		cnt := 0
		for j:=0;j<tLen;j++ {
			if s[i+j] != t[j]{
				cnt++
			}
		}
		if cnt < min {
			min = cnt
		}
	}
	fmt.Printf("%d\n", min)

}

