package main

import (
	"fmt"
)

func main() {
	var S string
	fmt.Scan(&S)
	var q int
	fmt.Scan(&q)
	var t, f int
	var c string
	reverse := 0
	// s := []byte(S)
	s := make([]byte, q)
	s = append(s, []byte(S)...)
	for i := 0; i < q; i++ {
		fmt.Scan(&t)
		if t == 1 {
			reverse += 1
			continue
		}
		fmt.Scan(&f, &c)
		if f == 1 {
			if reverse%2 == 0 {
				s = appendPre(s, c)
			} else {
				// s = appendSuf(s, c)
				s = append(s, []byte(c)...)
			}
		} else {
			if reverse%2 == 1 {
				s = appendPre(s, c)
			} else {
				// s = appendSuf(s, c)
				s = append(s, []byte(c)...)
			}
		}
	}

	if reverse%2 == 1 {
		for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {
			s[i], s[j] = s[j], s[i]
		}
	}
	fmt.Println(string(s))
}

func appendPre(list []byte, s string) []byte {
	a := make([]byte, 200000)
	a = append(a, []byte(s)...)
	return append(a, list...)
}

// func appendSuf(list []byte, s string) []byte {
// 	res := append(list, []byte(s)...)
// 	return res
// }
