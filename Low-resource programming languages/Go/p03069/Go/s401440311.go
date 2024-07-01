package main

import "fmt"

func main() {
	var n, ans int
	fmt.Scan(&n)
	var s string
	fmt.Scan(&s)
	for i := 0; i < n-1; i++ {
		if rune(s[i]) == '#' && rune(s[i+1]) == '.' {
			ans++
			i++
		}
	}
	fmt.Println(ans)
}
