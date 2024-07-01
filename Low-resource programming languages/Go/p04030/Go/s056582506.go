package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	ans := ""
	for _, r := range s {
		if r == 'B' && ans != "" {
			ans = ans[0 : len(ans)-1]
		}
		if r == '0' || r == '1' {
			ans += string(r)
		}
	}
	fmt.Println(ans)
}
