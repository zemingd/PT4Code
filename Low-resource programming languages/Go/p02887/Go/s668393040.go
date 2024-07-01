package main

import (
	"fmt"
)

func main() {
	var n int
	var s string
	fmt.Scan(&n,&s)
	
	nowSlime := s[0]
	cnt := 1
	for i := 1; i < n; i++ {
		if nowSlime != s[i] {
			cnt++
			nowSlime = s[i]
		}
	}
	fmt.Println(cnt)
}