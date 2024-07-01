package main

import (
	"fmt"
)

func main() {
	var s, ans string
	fmt.Scan(&s)a
	s += string("e")

	for i := 0; i < len(s)-1; i++ {
		if s[i] == 66 {
			ans = ans[:len(ans)-1]
		} else {
			ans += string(s[i])
		}
	}
	fmt.Print(ans)
}
