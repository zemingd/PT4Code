package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	cnt := len(s)
	cnt = calc(cnt, s, 'A')

	s = reversed(s)
	cnt = calc(cnt, s, 'Z')

	fmt.Println(cnt)
}

func reversed(s string) string {
	r := make([]rune, len(s))
	j := 0
	for i := len(s) - 1; i >= 0; i-- {
		r[j] = rune(s[i])
		j++
	}
	return string(r)
}

func calc(cnt int, s string, c rune) int {
	for i := 0; rune(s[i]) != c || cnt < 0; i++ {
		cnt--
	}
	return cnt
}
