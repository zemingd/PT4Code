package main

import "fmt"

func main() {
	// Code for B - Unhappy Hacking (ABC Edit)
	var s string
	fmt.Scanf("%s", &s)

	var ans string
	for i := 0; i < len(s); i++ {
		if s[i] == '0' {
			ans += string('0')
		} else if s[i] == '1' {
			ans += string('1')
		} else {
			if len(ans) == 0 {
				continue
			} else {
				ans = ans[0 : len(ans)-1]
			}
		}
	}

	fmt.Println(ans)
}
