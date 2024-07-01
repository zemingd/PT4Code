package main

import "fmt"

func main() {
	var s string

	fmt.Scan(&s)
	ans := ""
	for _, c := range s {
		if c == '0' {
			ans += "0"
		} else if c == '1' {
			ans += "1"
		} else {
			if len(ans) > 0 {
				ans = ans[:len(ans)-1]
			}
		}
	}
	fmt.Println(ans)
}
