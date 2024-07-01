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
	ts := strings.Split(t, "")

	sort.Strings(ss)
	sort.Sort(sort.Reverse(sort.StringSlice(ts)))

	rs := strings.Join(ss, "")
	rt := strings.Join(ts, "")

	if rs < rt {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
