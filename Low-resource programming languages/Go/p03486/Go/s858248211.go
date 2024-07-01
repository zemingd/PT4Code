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
	tt := strings.Split(t, "")
	sort.Strings(ss)
	sort.Sort(sort.Reverse(sort.StringSlice(tt)))

	if strings.Join(ss, "") < strings.Join(tt, "") {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
