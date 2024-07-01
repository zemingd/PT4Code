package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	num, _ := strconv.Atoi(scanString())
	return num
}

func scanString() string {
	sc.Scan()
	return sc.Text()
}

func init() {
	sc.Split(bufio.ScanWords)
}

func isPalindrome(s string) bool {
	head := 0
	tail := len(s) - 1
	for head < tail {
		if s[head] != s[tail] {
			return false
		}
		head++
		tail--
	}
	return true
}

func main() {
	s := scanString()
	ans := "Yes"
	if !isPalindrome(s) {
		ans = "No"
	}

	l := len(s)
	if !isPalindrome(s[0 : (l-1)/2]) {
		ans = "No"
	}

	if !isPalindrome(s[(l+3)/2-1 : l]) {
		ans = "No"
	}

	fmt.Println(ans)
}
