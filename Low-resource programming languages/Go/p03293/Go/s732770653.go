package main

import (
	"fmt"
	"strings"
)

func main() {
	var s,t string
	fmt.Scan(&s,&t)

	ans := s
	for i := 0; i < len(s); i++ {
		if ans == t {
			fmt.Println("Yes")
			return
		}
		ss := strings.Split(ans,"")
		ans = ss[len(ans)-1] + string([]rune(ans)[0:len(s)-1])
	}
	fmt.Println("No")
}