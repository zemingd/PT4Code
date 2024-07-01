package main

import "fmt"

func stringToRunes(s string) (runes []rune) {
	runes = make([]rune, len(s))
	for i, r := range s {
		runes[i] = r
	}
	return
}

func runesToString(runes []rune) (s string) {
	s = ""
	for i := 0; i < len(runes); i++ {
		s += string(runes[i])
	}
	return
}

func main() {
	var s string
	fmt.Scan(&s)
	rs := stringToRunes(s)
	rs[3] = '8'
	fmt.Println(runesToString(rs))
}
