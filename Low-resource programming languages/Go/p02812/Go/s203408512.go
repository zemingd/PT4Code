package main

import "fmt"

func main() {
	var n, cnt int
	var s string
	fmt.Scan(&n)
	fmt.Scan(&s)
	for i := 0; i <= n-3; i++ {
		if s[i:i+3] == "ABC" {
			cnt++
		}
	}
	fmt.Println(cnt)
}
