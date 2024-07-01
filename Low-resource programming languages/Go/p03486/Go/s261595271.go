package main

import (
	"fmt"
	"sort"
	"strings"
)

func main() {
	var s, t string
	fmt.Scan(&s, &t)

	s2 := strings.Split(s, "")
	t2 := strings.Split(t, "")

	sort.Strings(s2)
	sort.Sort(sort.Reverse(sort.StringSlice(t2)))

	s = strings.Join(s2, "")
	t = strings.Join(t2, "")

	if s < t {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
