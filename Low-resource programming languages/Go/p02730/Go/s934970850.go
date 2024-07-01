package main

import "fmt"

func isKaibun(s string) bool {
	n := len(s)
	if n < 3 || n%2 != 1 {
		return false
	}
	n--
	for i := 0; i < n/2; i++ {
		if s[i] != s[n-i] {
			return false
		}
	}
	return true
}

func main() {
	var s string
	fmt.Scan(&s)

	n := len(s) - 1

	a := s[:n/2]
	b := s[(n+2)/2:]

	if isKaibun(s) && isKaibun(a) && isKaibun(b) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
