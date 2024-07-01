package main

import (
	"fmt"
	"strings"
)

func main() {
	var s, t string
	fmt.Scan(&s, &t)
	for i := len(s); i >= len(t); i-- {
		temp := s[i-len(t) : i]
		ok := true
		for j := 0; j < len(t); j++ {
			if t[j] != temp[j] && temp[j] != '?' {
				ok = false
				break
			}
		}
		if ok {
			ans := s[:i-len(t)] + t + s[i:]
			fmt.Println(strings.Replace(ans, "?", "a", -1))
			return
		}
	}
	fmt.Println("UNRESTORABLE")
}
