package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)
	c := 0
	cnt := 0
	if s[0] == 65 {
		for i :=1; i< len(s); i++ {
			if i != 1 && i != len(s)-1 && s[i] == 67 {
				c++
			}
			if 97 <= s[i] && s[i] <= 122 {
				cnt++
			}
		}
		if cnt == len(s)-2 && c == 1{
			fmt.Println("AC")
			return
		}
	}
	fmt.Println("WA")
}