package main

import (
	"fmt"
)

func isPalindrome(s string) bool {
	l := len(s)
	if l < 1 {
		return false
	}

	left := 0
	right := l - 1
	for left < right {
		if s[left] != s[right] {
			return false
		}
		left++
		right--
	}

	return true
}

func main() {

	var s string
	fmt.Scan(&s)

	s1 := s[0 : len(s)/2]
	s2 := s[len(s)/2+1:]
	if isPalindrome(s) && isPalindrome(s1) && isPalindrome(s2) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}
