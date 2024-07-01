package main

import "fmt"

func main() {
	var s, t string
	fmt.Scan(&s)
	for i := 0; i < len(s); i++ {
		if s[i] == '0' || s[i] == '1' {
			t += string(s[i])
		} else if s[i] == 'B' && len(t) > 0 {
			t = t[:len(t)-1]
		}
	}
	fmt.Println(t)
}
