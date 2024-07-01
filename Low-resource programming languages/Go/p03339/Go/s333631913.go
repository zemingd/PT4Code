package main

import (
	"fmt"
	"strings"
	"sync"
)

func main() {
	n := SingleInt()
	str := SingleStr()
	strs := strings.Split(str, "")

	r := make([]int, 0, n)
	l := make([]int, 0, n)
	var nw, wc, ec int

	var max int

	for _, v := range strs {
		nw = wc

		if v == "W" {
			wc++
		} else {
			ec++
			max = ec
		}

		if nw != wc {
			l = append(l, wc-1)
		} else {
			l = append(l, wc)
		}

		r = append(r, ec)
	}

	var min int
	var once sync.Once
	for i := 0; i < n; i++ {
		var re int
		re = max - r[i] + l[i]
		once.Do(func() {
			min = re
		})
		if min > re {
			min = re
		}
	}

	fmt.Printf("%#v\n", min)
}

func SingleInt() int {
	var n int
	fmt.Scan(&n)
	return n
}

func SingleStr() string {
	var s string
	fmt.Scan(&s)
	return s
}
