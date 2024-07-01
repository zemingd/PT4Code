package main

import "fmt"

func main() {
	var n, k int
	var s string
	fmt.Scan(&n, &k, &s)
	ans := ""
	for i := 0; i < n; i++ {
		if i+1 == k {
			if s[i] == 'A' {
				ans += "a"
			} else if s[i] == 'B' {
				ans += "b"
			} else {
				ans += "c"
			}
		} else {
			ans += string(s[i])
		}
	}
	fmt.Println(ans)
}
