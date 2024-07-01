package main

import "fmt"

func main() {
	var s, t string
	fmt.Scan(&s, &t)

	last_match := -1
	for i := 0; i <= len(s)-len(t); i++ {
		for j := 0; j < len(t); j++ {
			if s[i+j] != t[j] && s[i+j] != '?' {
				break
			}
			if j == len(t)-1 {
				last_match = i
			}
		}
	}

	if last_match == -1 {
		fmt.Println("UNRESTORABLE")
	} else {
		ans := ""
		for i := range s {
			if s[i] != '?' {
				ans += string(s[i])
			} else if last_match <= i && i < last_match+len(t) {
				ans += string(t[i-last_match])
			} else {
				ans += "a"
			}
		}
		fmt.Println(ans)
	}
}
