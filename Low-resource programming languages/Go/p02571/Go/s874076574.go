package main

import (
	"fmt"
)

func main() {
	var s, t string
	fmt.Scanf("%s", &s)
	fmt.Scanf("%s", &t)

	lt := len(t)
	var tCnt int
	for i := 0; i < len(s)-lt+1; i++ {
		// 比較文字列
		c := s[i : i+lt]
		var cnt int
		for j := 0; j < len(c); j++ {
			if c[j] == t[j] {
				cnt++
			}
		}
		if cnt > tCnt {
			tCnt = cnt
		}
	}
	fmt.Println(len(t) - tCnt)
}
