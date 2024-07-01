package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var n int
	fmt.Scan(&n)

	s := ""
	answer := 0

	for {
		s = subseq(s)
		m, _ := strconv.Atoi(s)
		if m > n {
			break
		}
		if strings.ContainsRune(s, '3') && strings.ContainsRune(s, '5') && strings.ContainsRune(s, '7') {
			answer++
		}
	}

	fmt.Println(answer)
}

func subseq(s string) string {
	l := len(s)
	if l == 0 {
		return "3"
	} else if s[l-1] == '7' {
		return subseq(s[0:l-1]) + "3"
	} else if s[l-1] == '5' {
		return s[0:l-1] + "7"
	} else if s[l-1] == '3' {
		return s[0:l-1] + "5"
	} else {
		return "3"
	}
}
