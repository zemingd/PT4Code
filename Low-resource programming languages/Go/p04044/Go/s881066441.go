package main

import (
	"fmt"
	"sort"
)

func main() {
	var a, b int
	fmt.Scanf("%d %d", &a, &b)
	ss := make([]string, 0, a)
	for i := 0; i < a; i++ {
		var s string
		fmt.Scanf("%s", &s)
		ss = append(ss, s)
	}
	sort.Strings(ss)
	for _, s := range ss {
		fmt.Print(s)
	}
	fmt.Println("")
}
