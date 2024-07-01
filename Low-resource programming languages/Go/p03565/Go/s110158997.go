package main

import "fmt"

func main() {
	var s, t string
	fmt.Scan(&s, &t)
	s = reverse(s)
	t = reverse(t)

	for i := 0; i < len(s); i++ {
		ok := true
		for j := 0; j < len(t); j++ {
			if len(s) <= i+j {
				ok = false
				break
			}
			tt := t[j]
			ss := s[i+j]
			if !(ss == tt || ss == '?') {
				ok = false
				break
			}
		}
		if ok {
			ans := ""
			for j := 0; j < len(s); j++ {
				c := s[j]
				if i <= j && j < i+len(t) {
					c = t[j-i]
				} else if c == '?' {
					c = 'a'
				}
				ans += string(c)
			}
			fmt.Println(reverse(ans))
			return
		}
	}
	fmt.Println("UNRESTORABLE")
}

func reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}
