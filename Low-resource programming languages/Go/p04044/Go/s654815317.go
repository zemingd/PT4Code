package main

import (
	"fmt"
)

func sort(s []string) []string {
	for i := len(s); i > 0; i-- {
		for j := 0; j < i - 1; j++ {
			if s[j] > s[j+1] {
				s[j], s[j+1] = s[j+1], s[j]
			}
		} 
	}
	return s
}

func main() {
	var n, l int
	fmt.Scan(&n, &l)

	s := make([]string, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&s[i])
	}

	ss := sort(s)
	var ret string
	for i := 0; i < l; i++ {
		ret += ss[i]
	}

	fmt.Println(ret)
}