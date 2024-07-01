package main

import (
	"fmt"
	"strings"
)

type query struct {
	F int
	C string
}

func main() {
	var s string
	var q int
	fmt.Scanf("%s", &s)
	fmt.Scanf("%d", &q)
	qs := make([]query, 0, q)

	reversed := false
	reverseCount := 0
	for i := 0; i < q; i++ {
		var t, f int
		var c string
		fmt.Scanf("%d %d %s", &t, &f, &c)

		if t == 1 {
			reversed = !reversed
			reverseCount++
			continue
		}
		if f == 1 && reversed {
			f = 2
		} else if f == 2 && reversed {
			f = 1
		}
		qs = append(qs, query{
			F: f,
			C: c,
		})
	}

	left := make([]string, 0, q)
	right := make([]string, 0, q)
	for _, qq := range qs {
		if qq.F == 1 {
			left = append([]string{qq.C}, left[0:]...)
		} else {
			right = append(right, qq.C)
		}
	}

	sarray := append(left, s)
	sarray = append(sarray, right[0:]...)

	s = strings.Join(sarray, "")

	if reverseCount%2 != 0 {
		s = Reverse(s)
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
