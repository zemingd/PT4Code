package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	result := "No"
	sa := s[:(len(s)-1)/2]
	sb := s[((len(s)+3)/2)-1:]
	if s == reverse(s) && sa == reverse(sa) && sb == reverse(sb) {
		result = "Yes"
	}
	fmt.Println(result)
}

func reverse(s string) string {
	rs := []rune(s)
	for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {
		rs[i], rs[j] = rs[j], rs[i]
	}
	return string(rs)
}
