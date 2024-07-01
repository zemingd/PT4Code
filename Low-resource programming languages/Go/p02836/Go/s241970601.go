package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	var cnt int
	for i := 0; i < len(s)/2; i++ {
		if s[i] != s[len(s)-i-1] {
			cnt += 1
		}
	}
	fmt.Println(cnt)
}
