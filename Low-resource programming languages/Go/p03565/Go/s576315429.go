package main

import "fmt"

func main() {
	var s, t string
	fmt.Scan(&s, &t)

	s, t = reverse(s), reverse(t)

	ti := 0
	ng := true
	for i := 0; i < len(s); i++ {
		if s[i] == '?' || s[i] == t[0] {
			ok := true
			for j := 0; j < len(t); j++ {
				if len(s)-1 < i+j {
					ok = false
					break
				}
				if s[i+j] == '?' {
					continue
				}

				if s[i+j] != t[j] {
					ok = false
				}
			}
			if ok {
				ti = i
				ng = false
				break
			}
		}
	}

	if ng {
		fmt.Println("UNRESTORABLE")
		return
	}

	ans := ""
	for i := 0; i < len(s); i++ {
		if i == ti {
			for j := 0; j < len(t); j++ {
				ans += string(t[j])
			}
			i += len(t) - 1
		} else {
			if s[i] == '?' {
				ans += "a"
			} else {
				ans += string(s[i])
			}
		}
	}

	fmt.Println(reverse(ans))
}

func reverse(s string) string {
	t := ""
	for _, c := range s {
		t = string(c) + t
	}
	return t
}
