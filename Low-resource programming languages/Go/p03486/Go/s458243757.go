package main

import (
	"fmt"
	"sort"
	"strings"
)

var S, T string

func main() {
	fmt.Scan(&S, &T)
	s := strings.Split(S, "")
	t := strings.Split(T, "")
	sort.Strings(s)
	sort.Sort(sort.Reverse(sort.StringSlice(t)))
	newS := ""
	newT := ""
	for _, tmp := range s {
		newS += tmp
	}
	for _, tmp := range t {
		newT += tmp
	}
	if newT > newS {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
