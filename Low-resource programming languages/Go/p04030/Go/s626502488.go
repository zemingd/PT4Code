package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	ans := ""
	for i := 0; i < len(s); i++ {
		switch {
		case s[i] == '0':
			ans += "0"
		case s[i] == '1':
			ans += "1"
		case s[i] == 'B':
			if ans == "" {
				continue
			}
			ans = ans[:len(ans)-1]
		}
	}
	fmt.Println(ans)
}
