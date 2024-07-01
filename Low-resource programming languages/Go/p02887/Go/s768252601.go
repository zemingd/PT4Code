package main

import "fmt"

func main() {
	var n int
	var s string

	fmt.Scan(&n)
	fmt.Scan(&s)

	cnt := 1
	for i := 0; i < len(s)-1; i++ {
		if s[i] != s[i+1] {
			cnt++
		}
	}

	fmt.Println(cnt)
}
