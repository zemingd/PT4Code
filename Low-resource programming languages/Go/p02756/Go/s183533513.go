package main

import (
	"fmt"
	"strings"
)

var ans string
var s string
var q int
var t, f int
var c string

func main() {
	fmt.Scan(&s)
	fmt.Scan(&q)
	fronts := make([]rune, 0, 200000)
	backs := make([]rune, 0, 200000)

	rev := false
	for i := 0; i < q; i++ {
		fmt.Scan(&t)
		switch t {
		case 1:
			rev = !rev
		case 2:
			fmt.Scan(&f, &c)
			head := (f == 1)
			if rev {
				head = !head
			}
			if head {
				fronts = append(fronts, []rune(c)[0])
			} else {
				backs = append(backs, []rune(c)[0])
			}
		default:
			panic("err")
		}
	}

	if rev {
		fronts, backs = backs, fronts
		s = string(reverse([]rune(s)))
	}
	ans = strings.Join([]string{
		string(reverse(fronts)), s, string(backs),
	}, "")

	fmt.Println(ans)
}

func reverse(ss []rune) []rune {
	o := make([]rune, len(ss))
	i := len(ss)
	for _, s := range ss {
		i--
		o[i] = s
	}
	return o
}
