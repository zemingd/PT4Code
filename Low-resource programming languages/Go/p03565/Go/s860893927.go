package main

import (
	"fmt"
	"sort"
	"strings"
)

func main() {
	var s, t string
	fmt.Scan(&s, &t)

	m := []string{}
	for i := 0; i <= len(s)-len(t); i++ {
		ss := s[0:i] + t + s[i+len(t):]
		ok := true
		for j := 0; j < len(s); j++ {
			if s[j] == '?' || s[j] == ss[j] {
				continue
			}
			ok = false
		}
		if ok {
			m = append(m, ss)
		}
	}

	if len(m) == 0 {
		fmt.Println("UNRESTORABLE")
	} else {
		sort.Strings(m)
		ans := strings.Replace(m[0], "?", "a", -1)
		fmt.Println(ans)
	}
}
