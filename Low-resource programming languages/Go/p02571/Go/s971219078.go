package main

import (
	"fmt"
	"math"
)

func main() {
	var s, t string

	_, err := fmt.Scanf("%s\n%s", &s, &t)
	if err != nil {
		return
	}

	sLen := len(s)
	tLen := len(t)

	min := math.MaxInt32
	for i:=0;i<sLen-tLen;i++{
		cnt := 0
		for j:=0;j<tLen;j++{
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

