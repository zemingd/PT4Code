package main

import "fmt"

func main() {
	var n int
	var s string
	fmt.Scan(&n, &s)

	var pre string
	ans := 1
	for i := 0; i < n; i++ {
		if i == 0 {
			pre = string(s[i])
			continue
		}
		if string(s[i]) != pre {
			ans++
		}
		pre = string(s[i])
	}
	fmt.Println(ans)
}