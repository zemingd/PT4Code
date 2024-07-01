package main

import "fmt"

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	var n int
	var S string

	fmt.Scan(&n, &S)

	cnt := 0
	for i := 1; i < n; i++ {
		if S[i] == 'E' {
			cnt++
		}
	}
	ans := cnt

	for i := 2; i < n; i++ {
		if S[i-1] == 'W' {
			cnt++
		}
		if S[i] == 'E' {
			cnt--
		}
		ans = min(ans, cnt)
	}
	fmt.Println(ans)
}
