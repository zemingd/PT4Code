package main

import "fmt"

func main() {
	var s, t string
	fmt.Scan(&s, &t)
	for i := len(s) - len(t); i >= 0; i-- {
		com := true
		for j := 0; j < len(t); j++ {
			if s[i+j] == '?' {
				continue
			}
			if t[j] != s[i+j] {
				com = false
				break
			}
		}
		if com {
			v := s[:i] + t + s[i+len(t):]
			ans := ""
			for _, c := range v {
				if c == '?' {
					ans += "a"
				} else {
					ans += string(c)
				}
			}
			fmt.Println(ans)
			return
		}
	}
	fmt.Println("UNRESTORABLE")
}
