package main

import "fmt"

func main() {
	var s, t string
	var cnt int
	fmt.Scan(&s, &t)
	for i := 0; i < len(s); i++ {
		if s[i] != t[i] {
			cnt++
		}
	}
	fmt.Println(cnt)
}
