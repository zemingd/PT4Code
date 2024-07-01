package main

import (
	"fmt"
)

func main() {
	var s, ans string
	fmt.Scan(&s)
	s += string("e")

	for i := 0; i < len(s)-1; i++ {
		if s[i] == 66 || s[i+1] == 66 {
			continue
		} else {
			ans += string(s[i])
		}
	}
	fmt.Print(ans)
}
