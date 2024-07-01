package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scanf("%s", &s)
	n := len(s)
	if n >= 7 && isPalindrome(s) && isPalindrome(s[0:(n-1)/2]) && isPalindrome(s[(n+3)/2-1:n]) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func isPalindrome(s string) bool {
	r := []rune(s)
	n := len(r)
	mid := (n - 1) / 2
	f := append([]rune{}, r[0:mid]...)
	b := append([]rune{}, r[mid+1:n]...)
	for i := 0; i < mid; i++ {
		if f[i] != b[mid-1-i] {
			return false
		}
	}
	return true
}
