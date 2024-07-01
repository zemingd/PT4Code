package main

import (
	"fmt"
)

func stringsWithTheSameLength(n int, s, t string) string {
	var ans string
	for i := 0; i < n; i++ {
		ans += string(s[i])
		ans += string(t[i])
	}
	return ans
}

func main() {
	var n int
	var s, t string
	fmt.Scan(&n, &s, &t)
	fmt.Println(stringsWithTheSameLength(n, s, t))
}
