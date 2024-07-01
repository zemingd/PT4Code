package main

import (
	"fmt"
	"sort"
	"strings"
)

func main() {
	var s, t string
	fmt.Scan(&s, &t)

	s2 := sort.StringSlice(strings.Split(s, ""))
	t2 := sort.StringSlice(strings.Split(t, ""))
	sort.Sort(s2)
	sort.Sort(sort.Reverse(t2))
	a := strings.Join(s2, "")
	b := strings.Join(t2, "")

	if a < b {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
