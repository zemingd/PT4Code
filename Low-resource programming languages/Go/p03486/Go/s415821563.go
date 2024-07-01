package main

import (
	"fmt"
	"sort"
)

func getReverse(s string) (t string) {
	for _, r := range s {
		t = string(r) + t
	}
	return t
}

func getSorted(s string) (t string) {
	ss := make([]string, len(s))
	for i, r := range s {
		ss[i] = string(r)
	}
	sort.Strings(ss)
	for i := 0; i < len(s); i++ {
		t += ss[i]
	}
	return
}

func main() {
	var s, t string
	fmt.Scan(&s, &t)
	if getSorted(s) < getReverse(getSorted(t)) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
