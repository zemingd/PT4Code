package main

import (
	"fmt"
)

type Q struct {
	T int
	F int
	C string
}

func main() {
	var s string
	var q int
	fmt.Scanf("%s", &s)
	fmt.Scanf("%d", &q)
	qs := make([]Q, 0, q)

	for i := 0; i < q; i++ {
		var t, f int
		var c string
		fmt.Scanf("%d %d %s", &t, &f, &c)

		qs = append(qs, Q{
			T: t,
			F: f,
			C: c,
		})
	}

	for _, qq := range qs {
		if qq.T == 1 {
			s = Reverse(s)
			continue
		}
		if qq.T == 2 {
			if qq.F == 1 {
				s = qq.C + s
			} else if qq.F == 2 {
				s = s + qq.C
			}
		}
	}

	fmt.Printf("%s", s)
}

func Reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}
