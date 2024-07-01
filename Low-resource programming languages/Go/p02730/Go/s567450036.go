package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {

	sc.Scan()
	s := sc.Text()
	mid := len(s) / 2
	sr := s[:mid]
	sl := s[mid+1:]

	if isPalindrome(sr) && isPalindrome(sl) && isPalindrome(s) {
		fmt.Print("Yes")
	} else {
		fmt.Print("No")
	}

}

func isPalindrome(s string) bool {
	len := len(s)
	mid := len / 2

	for i := 0; i <= mid; i++ {
		r := len - i - 1

		if s[i] != s[r] {
			return false
		}

	}

	return true
}
