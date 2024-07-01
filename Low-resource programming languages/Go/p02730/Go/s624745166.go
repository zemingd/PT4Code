package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scanf("%s", &s)
	answer := isStrongParlindrome(s)
	if answer {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func isStrongParlindrome(s string) bool {
	return isParlindrome(s) && isConditionA(s) && isConditionB(s)
}

func isConditionA(s string) bool {
	start := 0
	end := (len(s) - 1) / 2
	return isParlindrome(s[start:end])
}

func isConditionB(s string) bool {
	start := (len(s)+3)/2 - 1
	end := len(s)
	return isParlindrome(s[start:end])
}

func isParlindrome(s string) bool {
	for i := 0; i < len(s)/2+1; i++ {
		if s[i] != s[len(s)-i-1] {
			return false
		}
	}
	return true
}
