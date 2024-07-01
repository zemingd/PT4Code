package main

import (
	"fmt"
	"strings"
)

func main() {
	var n int
	var s,t string
	fmt.Scan(&n,&s,&t)
	ss := strings.Split(s,"")
	tt := strings.Split(t,"")

	ans := []string{}
	for i := 0; i < n; i++ {
		ans = append(ans,ss[i],tt[i])
	}

	fmt.Println(strings.Join(ans,""))
}