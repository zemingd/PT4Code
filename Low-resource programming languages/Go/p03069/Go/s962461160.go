package main

import (
	"fmt"
	"strings"
)

func main() {
	s, c := SingleInt(), SingleStr()
	strs := strings.Split(c, "")
	l := len(strs)
	if strs[l-1] == "." {
		strs = append(strs, "#")
	}

	co := make([]int, 0, s)
	var conv int
	allWhite := true
	for i := 0; i < l; i++ {
		if strs[i] == "." {
			conv++
			continue
		}
		if strs[i] == "#" {
			allWhite = false
			co = append(co, conv)
			conv = 0
		}
	}

	if allWhite {
		fmt.Printf("%#v\n", 0)
		return
	}

	var re int
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
