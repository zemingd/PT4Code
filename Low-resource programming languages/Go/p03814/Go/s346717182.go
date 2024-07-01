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

func reversed(s string) (result string) {
	for i := len(s) - 1; i >= 0; i-- {
		result += string(s[i])
	}
	return
}

func calc(cnt int, s string, c rune) int {
	for i := 0; rune(s[i]) != c || cnt < 0; i++ {
		cnt--
	}
	return cnt
}
