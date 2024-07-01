package main

import "fmt"

var s string

func main() {
	fmt.Scan(&s)
	n := len(s)
	rs := []rune(s)
	if ispar(rs) && ispar(rs[:(n-1)/2]) && ispar(rs[(n+3)/2-1:]) {
		fmt.Println("Yes")
	} else {

		fmt.Println("No")
	}
}

func ispar(rs []rune) bool {
	n := len(rs)
	for i := 0; i < n; i++ {
		if rs[i] != rs[n-i-1] {
			return false
		}
	}
	return true
}
