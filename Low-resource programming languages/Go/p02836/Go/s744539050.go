package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	N := len(s)
	var cnt int64
	for i := 0; i < N/2; i++ {
		if s[i] != s[N-1-i] {
			cnt++
		}
	}
	fmt.Println(cnt)
}
