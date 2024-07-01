package main

import "fmt"

func main() {
	var s, t string
	fmt.Scan(&s, &t)

	ss := split(s)
	tt := split(t)
	min := 1000

	nocut := false
	for i := 0; i < len(ss);i++ {
		cnt := len(tt)
		for j := 0; j < len(tt); j++ {
			if i+j == len(ss) {
				// if i+j >= len(ss)-1 {
				nocut = true
				break
			}

			if ss[i+j] == tt[j] {
				cnt--
			}
		}
		if nocut {
			continue

		}
		if cnt <  min {
			min = cnt
		}
	}

	fmt.Println(min)
}

func split(s string) []string {
	ret := make([]string, len([]rune(s)))
	for i, v := range []rune(s) {
		ret[i] = string(v)
	}
	return ret
}
