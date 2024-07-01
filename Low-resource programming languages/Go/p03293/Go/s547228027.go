package main

import (
	"fmt"
)

func main() {
	var s,t string
	fmt.Scan(&s,&t)
	
	for i := 0; i < len(s); i++ {
		//fmt.Println(s)
		if s == t {
			fmt.Println("Yes")
			return
		}
		s = s[len(s)-1:] + s[0:len(s)-1]
	}
	fmt.Println("No")
}