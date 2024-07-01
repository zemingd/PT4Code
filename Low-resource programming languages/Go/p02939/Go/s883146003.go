package main

import (
	"fmt"
)

func StringToRuneSlice(s string) []rune {
	var r []rune
	for _, runeValue := range s {
		r = append(r, runeValue)
	}
	return r
}

func main() {
	var s string
	fmt.Scan(&s)
	n := len(s)
	r := StringToRuneSlice(s)
	var ans int
	var ss []string
	for i := 0; i < n-1; i++ {
		if i == 0 {
			ss = append(ss, string(r[i]))
			ans++
			continue
		}
		for j := 0; j < n-i; j++ {
			var r1 []rune
			r1 = append(r1, r[i:i+j+1]...)
			if string(r1) != ss[len(ss)-1] {
				ss = append(ss, string(r1))
				ans++
				i += j
				break
			}
		}
	}
	last := string(r[len(r)-1])
	for i := 0; i < len(ss); i++ {
		s := ss[len(ss)-i-1]
		if s != last {
			ans++
			break
		}
		ans--
		last = s + last
	}
	fmt.Println(ans)
}
