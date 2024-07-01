package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	ans := make([]byte, 0)
	for i := 0; i < len(s); i++ {
		if s[i] == '0' || s[i] == '1' {
			ans = append(ans, s[i])
		} else if len(ans) > 0 {
			ans = ans[:len(ans)-1]
		}
	}
	fmt.Println(string(ans))
}
