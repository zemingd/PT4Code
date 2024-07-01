package main

import (
	"fmt"
)

func main() {
	var s, t string
	fmt.Scan(&s)
	fmt.Scan(&t)
	if len(t) > len(s){
		return
	}

	ans := 1001
	for i:=0; i<=len(s)-len(t); i++{
		diff := 0
		for j:=0; j<len(t); j++{
			if t[j] != s[i+j]{
				diff++
			}
		}
		ans = min(ans, diff)
	}
	fmt.Println(ans)
}

func min(a int, b int)int{
	if a > b{
		return b
	}else{
		return a
	}
}