package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	r := bufio.NewReader(os.Stdin)
	var s string
	fmt.Fscan(r, &s)

	ans := isPalindrome(s)
	ans = isPalindrome(s[:(len(s)-1)/2])

	if ans {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}

func isPalindrome(s string) bool {
	t := reverseString(s)
	return s == t
}

func reverseString(s string) string {
	r := []rune(s)
	for i, j := 0, len(r)-1; i < len(r)/2; i, j = i+1, j-1 {
		r[i], r[j] = r[j], r[i]
	}
	return string(r)
}
