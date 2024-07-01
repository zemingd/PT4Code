package main

import (
	"fmt"
	"sort"
	"strings"
)

func main() {
	var s, t string
	fmt.Scan(&s, &t)

	ss := strings.Split(s, "")
	st := strings.Split(t, "")

	sort.Strings(ss)
	sort.Strings(st)
	reverse(st)

	js := strings.Join(ss, "")
	jt := strings.Join(st, "")

	if js < jt {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func reverse(s []string) {
	for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {
		s[i], s[j] = s[j], s[i]
	}
}
