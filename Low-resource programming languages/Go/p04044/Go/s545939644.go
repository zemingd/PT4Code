package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, l int
	fmt.Scanf("%d %d", &n, &l)

	var ss = make([]string, n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%s", &ss[i])
	}

	sort.Strings(ss)

	for _, s := range ss {
		fmt.Print(s)
	}
}