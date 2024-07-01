package main

import (
	"fmt"
	"strings"
)

func main() {
	_, c := SingleInt(), SingleStr()
	strs := strings.Split(c, "")
	strs = append(strs, "#")
	l := len(strs)-1

	var co int
	for i := 0; i < l; i++ {
		n := strs[i]
		p := strs[i+1]

		if n == "#" && p == "." {
			strs[i+1] = "#"
			co++
		}
	}

	fmt.Println(co)
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
