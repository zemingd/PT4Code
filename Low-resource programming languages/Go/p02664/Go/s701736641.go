package main

import (
	"fmt"
)

func main() {
	var t string
	fmt.Scan(&t)
	
	ans := ""
	for i := 0; i < len(t); i++ {
		if t[i] == '?' {
			ans += "D"
		} else {
			ans += string(t[i])
		}
	}
	fmt.Println(ans)
}