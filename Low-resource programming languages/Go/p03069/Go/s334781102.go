package main

import (
	"fmt"
	"strings"
)

func main() {
	s, c := SingleInt(), SingleStr()
	strs := strings.Split(c, "")
	strs = append(strs, "#")
	l := len(strs)

	co := make([]int, 0, s)
	var conv int
	var hit bool
	for i := 0; i < l; i++ {
		if strs[i] == "." {
			conv++
		}
		if strs[i] == "#" {
			if i != l-1 {
				hit = true
			}
			co = append(co, conv)
			conv = 0
		}
	}

	var re int
	if !hit {
		fmt.Printf("%#v\n", re)
		return
	}
	for _, v := range co {
		re += v
	}
	fmt.Printf("%#v\n", re)
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
