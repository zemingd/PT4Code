package main

import "fmt"

func main() {
	var n int
	var s string
	fmt.Scan(&n, &s)

	cnt := 1
	for i := 1; i < n; i++ {
		if s[i] != s[i-1] {
			cnt++
		}
	}
	fmt.Println(cnt)
}
